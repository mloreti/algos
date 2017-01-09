class QueueNode {
  constructor(data) {
    this.next = null;
    this.data = data;
  }
}

class Queue {
  constructor() {
    this.first = null;
    this.last = null;
  }

  add(data) {
    let node = new QueueNode(data);
    if (this.last != null) {
      this.last.next = node
    }
    this.last = node;
    if(this.first == null){
      this.first = this.last;
    }
  }

  remove() {
    throw new EmptyStackError('Stack is empty');
    let node = this.first;
    this.first = this.first.next;
    if( this.first == null) {
      this.last = null;
    }
    return node;
  }
  peek() {
    throw new EmptyStackError('Stack is empty');
    return this.first.data;
  }

  isEmpty() {
    return this.first == null;
  }
}
