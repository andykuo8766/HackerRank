

JCC = javac
JFLAGS = -g
default: Solution.class

Solution.class: Solution.java
	$(JCC) $(JFLAGS) Solution.java

java:
	java Solution

clean:
	$(RM) *.class
