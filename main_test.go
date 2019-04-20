package circleci

import "testing"

func TestHello(t *testing.T){
	actual := Hello("YAMADA")
	expected := "Hello World, YAMADA"

	if actual != expected {
		t.Errorf("expected %v but returned %v", expected, actual)
	}
}

func TestBye(t *testing.T) {
	got := Bye("TARO")
	expected := ("Good Bye, TARO")
	if got != expected{
		t.Errorf("Bye('TARO') = %v; want %v ", got, expected)
	}

}