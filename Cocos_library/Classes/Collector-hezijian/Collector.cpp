#include "Collector.h"

Collector::Collector():
	m_time(1.0f)
{
	m_callback = [](){};
}

Collector* Collector::create(){
	Collector* ret = new Collector();
	if(ret && ret->init()){
		ret->autorelease();
		return ret;
	}
	CC_SAFE_DELETE(ret);
	return nullptr;
}

bool Collector::init(){
	if(!Node::init())	return false;
	this->scheduleUpdate();
	return true;
}

void Collector::addSource(Node* node){
	MoveTo* moveTo = MoveTo::create(m_time,this->getPosition());
	EaseBackInOut* easeMove = EaseBackInOut::create(moveTo);
	
	ScaleTo* scaleBig = ScaleTo::create(0.3*m_time,1.5f);
	ScaleTo* scaleSmall = ScaleTo::create(0.7*m_time,0.5f);
	Sequence* scale = Sequence::create(scaleBig,scaleSmall,NULL);
	
	Spawn* move = Spawn::create(easeMove,scale,NULL);

	CallFunc* callFunc = CallFunc::create([=](){
		node->removeFromParentAndCleanup(true);
		m_callback();
	});

	Sequence* action = Sequence::create(move,callFunc,NULL);
	node->runAction(action);
}

void Collector::setCallback(std::function<void()> callback){
	m_callback = callback;
}

void Collector::setFloatTime(float time){
	m_time = time;
}

void Collector::update(float delta){

}

void Collector::InsertSort(int *a, int n)
{
    for (int i=1; i<n; i++) {
        if (a[i]<a[i-1]){ //若第i个元素大于i-1元素，直接插入。小于的话，移动有序表后插入
            int j = i-1;
            int x = a[i]; //复制为哨兵，即存储待排序元素
            a[i] = a[i-1]; //向后移一个元素
            while (x<a[j]) { //查找在有序表中的插入位置
                a[j+1] = a[j];
                j--; //元素后移
            }
            a[j+1] = x; //插入到正确位置
        }
    }
}
