package main

import (
	"log"
	"os"

	"github.com/mitchellh/cli"
)

type fooCommand struct {
}

func (c *fooCommand) Help() string {
	return "help ..."
}

func (c *fooCommand) Synopsis() string {
	return "synopsis brabrabra..."
}

func (c *fooCommand) Run(args []string) int {
	return 0
}

func main() {
	c := cli.NewCLI("app", "1.0.0")
	c.Args = os.Args[1:]
	c.Commands = map[string]cli.CommandFactory{
		"foo": func() (cli.Command, error) {
			return &fooCommand{}, nil
		},
	}

	exitStatus, err := c.Run()
	if err != nil {
		log.Println(err)
	}

	os.Exit(exitStatus)
}
