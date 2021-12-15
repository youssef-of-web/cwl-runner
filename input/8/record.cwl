#!/usr/bin/env cwl-runner
# in exclusive_parameters only one is accepted
cwlVersion: v1.0
class: CommandLineTool
inputs:
  dependent_parameters:
    type:
      type: record
      name: dependent_parameters
      fields:
        itemA:
          type: string
          inputBinding:
            prefix: -A
        itemB:
          type: string
          inputBinding:
            prefix: -B
  exclusive_parameters:
    type:
      - type: record
        name: itemC
        fields:
          itemC:
            type: string
            inputBinding:
              prefix: -C
      - type: record
        name: itemD
        fields:
          itemD:
            type: string
            inputBinding:
              prefix: -D
      - type: record
        name: itemE
        fields:
          itemE:
            type: string
            inputBinding:
              prefix: -E            
outputs:
  example_out:
    type: stdout
stdout: output.txt
baseCommand: echo