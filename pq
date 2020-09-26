class PQ {
  constructor(){
    this.minHeap = [];
    this.size = 0;
  }

  isEmpty(){
    return this.size === 0;
  }

  peek(){
    return this.minHeap[0]
  }

  add(value){
    this.minHeap.push(value);
    return this.swimUp(this.minHeap, this.minHeap.length - 1)
  }

  swap(idx1 , idx2, array){
    let temp = array[idx1]
    array[idx1] = array[idx2]
    array[idx2] = temp
  }

  swimUp(array,index){
    let parentIdx = Math.floor((index - 1)/ 2)
    while(array[parentIdx] > array[index]){
      this.swap(parentIdx,index,array)
      index = parentIdx;
      parentIdx = Math.floor((index - 1) /2)
    }
    return true
  }

}


const pq = new PQ()
pq.add(5)
pq.add(10)
pq.add(7)
pq.add(11)
pq.add(2)
pq.add(9)

console.log(pq)
