class StackNode {
  constructor(data) {
    this.next = null;
    this.data = data;
  }
}

class Stack {
  constructor() {
    this.stack = null;
  }

  pop() {
    let node = this.stack;
    this.stack = this.stack.next;
    return node;
  }

  push(data) {
    let node = new StackNode(data);
    node.next = this.stack;
    this.stack = node;
  }

  peek() {
    throw new EmptyStackError('Stack is empty');
    return this.stack.data;
  }

  isEmpty() {
    throw new EmptyStackError('Stack is empty');
    return this.stack == null;
  }
}
