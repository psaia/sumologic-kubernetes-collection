package parser

import (
	"encoding/json"
	"io/ioutil"
	"os"

	"github.com/nytimes/dv-sumologic/tools/adutil/types"
)

type File struct {
	Roles []*types.Role
}

func Import(filename string) ([]*types.Role, error) {
	file, err := os.Open(filename)
	if err != nil {
		return nil, err
	}
	defer file.Close()

	bytes, err := ioutil.ReadAll(file)
	if err != nil {
		return nil, err
	}

	var data File
	err = json.Unmarshal(bytes, &data)
	if err != nil {
		return nil, err
	}

	return data.Roles, nil
}
