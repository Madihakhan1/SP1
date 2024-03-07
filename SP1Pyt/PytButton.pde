class PytButton {
  float x, y, radius;
  String[] messages;
  int currentMessageIndex;

  PytButton(float x, float y, float radius) {
    this.x = x;
    this.y = y;
    this.radius = radius;
    this.messages = new String[]{"Pyt prøv igen!", "Pyt!", "Bare sig pyt!"};
    this.currentMessageIndex = 0;
  }

  void drawButton() {
    fill(255, 0, 0); // Rød farve
    ellipseMode(RADIUS);
    ellipse(x, y, radius, radius);
    fill(255); // Hvid farve for tekst
    textAlign(CENTER, CENTER);
    textSize(100);
    text("Pyt", x, y);
  }

  boolean isMouseOver() {
    float distance = dist(mouseX, mouseY, x, y);
    return distance < radius;
  }

  void displayNextMessage() {
    int randomIndex = int(random(messages.length));
    println(messages[randomIndex]);
  }
}
