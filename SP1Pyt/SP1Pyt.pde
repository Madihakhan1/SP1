boolean buttonClicked = false;

// Erklærer pytButton
PytButton pytButton;

void setup() {
  size(600, 600);

  // Instansere pytknappe bredte divederet med 2 og højde dividered med 2.
  pytButton = new PytButton(width / 2, height / 2, 200);
}

void draw() {
  background(255);

  // Tegner pytknappen
  pytButton.drawButton();

  // Hvis knappen er klikket på, vis en besked
  if (buttonClicked) {
    pytButton.displayNextMessage();
    buttonClicked = false; // Nulstil flagget efter at have udskrevet beskeden
  }
}

void mousePressed() {
  if (pytButton.isMouseOver()) {
    buttonClicked = true;
  }
}
