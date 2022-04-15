settings.render=16; // PNG resolution is 16*72 dpi
texpreamble("\usepackage{palatino}");

size(10cm);
settings.outformat="png";
//settings.outformat="pdf";
pen bg = lightgray;
pen[] bga = {
  palered,
  palegreen,
  palecyan,
  pink,
  lightred,
  lightgreen,
  lightcyan,
  lightmagenta,
  mediumred,
  mediumgreen,
  mediumcyan,
  mediummagenta,
};
int num_nongray_colours = bga.length-1;

pair c = (0.5, 0.5);
pair e = (1.0, 0.0);
for (int i = 0; i < 40; ++i) {
  if (i < 2) {
    // Only the first two NFTs have a gray background
    filldraw(unitsquare, lightgray);
  }
  else {
    filldraw(unitsquare, bga[(i-2)%bga.length]);
  }

  pen fp = fontsize(45pt)+heavyblue;
  label("Instructor", c, align=5N,fp);
  label("Team", c, align=1.5N,fp);

  fp = fontsize(20pt)+blue;
  label("EE337 Microprocessor Lab", (0.5,0.5),align=0.5S,fp);

  fp = fontsize(20pt)+black;
  label("IIT Bombay", c, align=6S,fp);
  label("Spring 2022", c, align=10S,fp);
  pen p = gray;

  p = fontsize(12pt)+white;
  label(format("\texttt{MOV A, \#%02XH}", i), e, align=N+W,p);
  shipout(format("%d", i));
  erase();
}

