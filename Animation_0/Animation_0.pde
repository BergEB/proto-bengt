LineSegment l0;
LineSegment l1;
LineSegment l2;
LineSegment l3;
Ring r0;
horizontalLineSegment hl0;
horizontalLineSegment hl1;
horizontalLineSegment hl2;
horizontalLineSegment hl3;
fastHorizontalLineSegment fhl0;
fastHorizontalLineSegment fhl1;
fastHorizontalLineSegment fhl2;
fastHorizontalLineSegment fhl3;
fastLineSegment fl0;
fastLineSegment fl1;
fastLineSegment fl2;
fastLineSegment fl3;

void setup() {
  size(250, 250, P2D);
  smooth(8);
  frameRate(60);
  r0 = new Ring();
  l0 = new LineSegment();
  l1 = new LineSegment();
  l2 = new LineSegment();
  l3 = new LineSegment();
  hl0 = new horizontalLineSegment();
  hl1 = new horizontalLineSegment();
  hl2 = new horizontalLineSegment();
  hl3 = new horizontalLineSegment();
  fhl0 = new fastHorizontalLineSegment();
  fhl1 = new fastHorizontalLineSegment();
  fhl2 = new fastHorizontalLineSegment();
  fhl3 = new fastHorizontalLineSegment();
  fl0 = new fastLineSegment();
  fl1 = new fastLineSegment();
  fl2 = new fastLineSegment();
  fl3 = new fastLineSegment();
}

void draw() {
  background(0);
  r0.ringDisplay();
  r0.breathe();
  r0.breathLimit();
  
  l0.display();
  l0.expand();
  l0.limit();
  
  l1.inverseDisplay();
  l1.inverseExpand();
  l1.inverseLimit();
  
  l2.rightInverseDisplay();
  l2.rightInverseExpand();
  l2.rightInverseLimit();
  
  l3.leftInverseDisplay();
  l3.leftInverseExpand();
  l3.leftInverseLimit();
  
  hl0.horizontalDisplay();
  hl0.horizontalExpand();
  hl0.horizontalLimit();
  
  hl1.horizontalInverseDisplay();
  hl1.horizontalInverseExpand();
  hl1.horizontalInverseLimit();
  
  hl2.horizontalRightInverseDisplay();
  hl2.horizontalRightInverseExpand();
  hl2.horizontalRightInverseLimit();
  
  hl3.horizontalLeftInverseDisplay();
  hl3.horizontalLeftInverseExpand();
  hl3.horizontalLeftInverseLimit();
  
  fhl0.fastHorizontalDisplay();
  fhl0.fastHorizontalExpand();
  fhl0.fastHorizontalLimit();
  
  fhl1.fastHorizontalInverseDisplay();
  fhl1.fastHorizontalInverseExpand();
  fhl1.fastHorizontalInverseLimit();
  
  fhl2.fastHorizontalRightInverseDisplay();
  fhl2.fastHorizontalRightInverseExpand();
  fhl2.fastHorizontalRightInverseLimit();
  
  fhl3.fastHorizontalLeftInverseDisplay();
  fhl3.fastHorizontalLeftInverseExpand();
  fhl3.fastHorizontalLeftInverseLimit();
  
  fl0.fastDisplay();
  fl0.fastExpand();
  fl0.fastLimit();
  
  fl1.fastInverseDisplay();
  fl1.fastInverseExpand();
  fl1.fastInverseLimit();
  
  fl2.fastRightInverseDisplay();
  fl2.fastRightInverseExpand();
  fl2.fastRightInverseLimit();
  
  fl3.fastLeftInverseDisplay();
  fl3.fastLeftInverseExpand();
  fl3.fastLeftInverseLimit();
}
