{
  "image": "",
  "state": {
    "pan": {
      "x": 325.4253023867503,
      "y": 60.26969875640017
    },
    "zoom": 0.6885019370057256
  },
  "board": "icezum",
  "graph": {
    "blocks": [
      {
        "id": "9861e498-3d11-4426-ac0d-577d58d69e84",
        "type": "basic.output",
        "data": {
          "label": "s11",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 1072,
          "y": 248
        }
      },
      {
        "id": "3932d589-9e61-424e-af2e-fc48a3d49839",
        "type": "basic.output",
        "data": {
          "label": "s10",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 1072,
          "y": 328
        }
      },
      {
        "id": "913661ff-5232-4b8b-8c9f-5cde13af1118",
        "type": "basic.output",
        "data": {
          "label": "s9",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 1072,
          "y": 400
        }
      },
      {
        "id": "8cfc5a94-6f88-4066-93e0-959e1a6da669",
        "type": "basic.output",
        "data": {
          "label": "s8",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 1072,
          "y": 488
        }
      },
      {
        "id": "f92a469e-f5df-4431-9562-2ec310d9afea",
        "type": "basic.output",
        "data": {
          "label": "s7",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 1072,
          "y": 568
        }
      },
      {
        "id": "725c8b95-0ac4-42f7-b4eb-b7acc2aa5f50",
        "type": "basic.output",
        "data": {
          "label": "s6",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 1072,
          "y": 648
        }
      },
      {
        "id": "d5ed0a9c-a288-4147-961f-a23ec360b77f",
        "type": "basic.output",
        "data": {
          "label": "s5",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 1072,
          "y": 728
        }
      },
      {
        "id": "37c5dd9f-7596-4b45-bcb9-46a023d051f3",
        "type": "basic.output",
        "data": {
          "label": "s4",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 1072,
          "y": 808
        }
      },
      {
        "id": "42353bdc-b109-4fa4-9383-5905be5330c5",
        "type": "basic.output",
        "data": {
          "label": "s3",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 1072,
          "y": 888
        }
      },
      {
        "id": "af7889b0-8599-4e6d-bc16-e7626700b26d",
        "type": "basic.output",
        "data": {
          "label": "s2",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 1072,
          "y": 968
        }
      },
      {
        "id": "0d14f442-7c1a-47d7-9cfd-20aef88c2e38",
        "type": "basic.output",
        "data": {
          "label": "s1",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 1072,
          "y": 1048
        }
      },
      {
        "id": "e1dcf5c3-647e-4f4a-8208-7d7127cc4e1c",
        "type": "basic.output",
        "data": {
          "label": "s0",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 1072,
          "y": 1128
        }
      },
      {
        "id": "805da8eb-7cf8-4d81-9be0-43015161a1fc",
        "type": "basic.code",
        "data": {
          "code": "localparam AW = 12;     //-- Address bus\n\n//-- Initial address\nlocalparam BOOT_ADDR = 12'h800;\n\n//-- Register S: Accessing memory\nreg  [AW-1: 0] S = BOOT_ADDR;\n\nwire [11:0] dir12 = {i11,i10,i9,i8,i7,i6,i5,i4,i3,i2,i1,i0}; \n\nalways @(posedge clk) \nbegin\n    if (load)\n      S <= dir12;\n    else\n      if (inc)\n        S <= S + 1;\nend\n\nassign {s11,s10,s9,s8,s7,s6,s5,s4,s3,s2,s1,s0} = S;\n",
          "ports": {
            "in": [
              "clk",
              "load",
              "inc",
              "i11",
              "i10",
              "i9",
              "i8",
              "i7",
              "i6",
              "i5",
              "i4",
              "i3",
              "i2",
              "i1",
              "i0"
            ],
            "out": [
              "s11",
              "s10",
              "s9",
              "s8",
              "s7",
              "s6",
              "s5",
              "s4",
              "s3",
              "s2",
              "s1",
              "s0"
            ]
          }
        },
        "position": {
          "x": 464,
          "y": 392
        }
      },
      {
        "id": "e3ac8b48-fc87-4b23-b1e9-e80c473a33c9",
        "type": "basic.input",
        "data": {
          "label": "clk",
          "pin": {
            "name": "CLK",
            "value": "21"
          }
        },
        "position": {
          "x": 32,
          "y": 16
        }
      },
      {
        "id": "05703797-9ef9-4aaf-bed0-46e90728889b",
        "type": "basic.input",
        "data": {
          "label": "WS",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 32,
          "y": 88
        }
      },
      {
        "id": "8a4d7ca9-e907-4266-980e-f447669d5cd8",
        "type": "basic.input",
        "data": {
          "label": "INCS",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 32,
          "y": 168
        }
      },
      {
        "id": "474a883c-d4e5-4da1-b7ed-132389cce644",
        "type": "basic.input",
        "data": {
          "label": "i11",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 32,
          "y": 248
        }
      },
      {
        "id": "e423ea1f-5896-45cd-ac74-ab41078632d3",
        "type": "basic.input",
        "data": {
          "label": "i10",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 32,
          "y": 328
        }
      },
      {
        "id": "d81fb86b-d6e2-49be-b918-1f86a6c3294c",
        "type": "basic.input",
        "data": {
          "label": "i9",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 32,
          "y": 408
        }
      },
      {
        "id": "0a47885b-9096-436e-9c4b-bef74fc94638",
        "type": "basic.input",
        "data": {
          "label": "i8",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 32,
          "y": 488
        }
      },
      {
        "id": "8d1973fb-1e75-4a9b-9c51-9b685d4f16d8",
        "type": "basic.input",
        "data": {
          "label": "i7",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 32,
          "y": 568
        }
      },
      {
        "id": "39db4903-8a5e-4a79-84a4-6773f2938677",
        "type": "basic.input",
        "data": {
          "label": "i6",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 32,
          "y": 648
        }
      },
      {
        "id": "78b3a92e-bf38-4739-93f6-10378fbec35f",
        "type": "basic.input",
        "data": {
          "label": "i5",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 32,
          "y": 728
        }
      },
      {
        "id": "f58a59f9-f776-4ab0-a9fa-db37b8bd2a1f",
        "type": "basic.input",
        "data": {
          "label": "i4",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 32,
          "y": 808
        }
      },
      {
        "id": "3eb348e0-2bd0-4ad1-8fdb-1f1be8d7cf43",
        "type": "basic.input",
        "data": {
          "label": "i3",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 32,
          "y": 888
        }
      },
      {
        "id": "5984520c-1e49-451e-999a-368a9722ce81",
        "type": "basic.input",
        "data": {
          "label": "i2",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 32,
          "y": 968
        }
      },
      {
        "id": "2ecdabbf-7990-436b-9cb1-994ce0755af3",
        "type": "basic.input",
        "data": {
          "label": "i1",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 32,
          "y": 1048
        }
      },
      {
        "id": "a656ab9a-ab78-4283-8b71-0af994c38071",
        "type": "basic.input",
        "data": {
          "label": "i0",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 32,
          "y": 1128
        }
      }
    ],
    "wires": [
      {
        "source": {
          "block": "e3ac8b48-fc87-4b23-b1e9-e80c473a33c9",
          "port": "out"
        },
        "target": {
          "block": "805da8eb-7cf8-4d81-9be0-43015161a1fc",
          "port": "clk"
        }
      },
      {
        "source": {
          "block": "05703797-9ef9-4aaf-bed0-46e90728889b",
          "port": "out"
        },
        "target": {
          "block": "805da8eb-7cf8-4d81-9be0-43015161a1fc",
          "port": "load"
        },
        "vertices": [
          {
            "x": 416,
            "y": 408
          }
        ]
      },
      {
        "source": {
          "block": "8a4d7ca9-e907-4266-980e-f447669d5cd8",
          "port": "out"
        },
        "target": {
          "block": "805da8eb-7cf8-4d81-9be0-43015161a1fc",
          "port": "inc"
        },
        "vertices": [
          {
            "x": 408,
            "y": 424
          }
        ]
      },
      {
        "source": {
          "block": "474a883c-d4e5-4da1-b7ed-132389cce644",
          "port": "out"
        },
        "target": {
          "block": "805da8eb-7cf8-4d81-9be0-43015161a1fc",
          "port": "i11"
        },
        "vertices": [
          {
            "x": 400,
            "y": 440
          }
        ]
      },
      {
        "source": {
          "block": "e423ea1f-5896-45cd-ac74-ab41078632d3",
          "port": "out"
        },
        "target": {
          "block": "805da8eb-7cf8-4d81-9be0-43015161a1fc",
          "port": "i10"
        },
        "vertices": [
          {
            "x": 392,
            "y": 456
          }
        ]
      },
      {
        "source": {
          "block": "d81fb86b-d6e2-49be-b918-1f86a6c3294c",
          "port": "out"
        },
        "target": {
          "block": "805da8eb-7cf8-4d81-9be0-43015161a1fc",
          "port": "i9"
        },
        "vertices": [
          {
            "x": 384,
            "y": 480
          }
        ]
      },
      {
        "source": {
          "block": "0a47885b-9096-436e-9c4b-bef74fc94638",
          "port": "out"
        },
        "target": {
          "block": "805da8eb-7cf8-4d81-9be0-43015161a1fc",
          "port": "i8"
        },
        "vertices": [
          {
            "x": 176,
            "y": 512
          }
        ]
      },
      {
        "source": {
          "block": "8d1973fb-1e75-4a9b-9c51-9b685d4f16d8",
          "port": "out"
        },
        "target": {
          "block": "805da8eb-7cf8-4d81-9be0-43015161a1fc",
          "port": "i7"
        },
        "vertices": [
          {
            "x": 184,
            "y": 536
          }
        ]
      },
      {
        "source": {
          "block": "39db4903-8a5e-4a79-84a4-6773f2938677",
          "port": "out"
        },
        "target": {
          "block": "805da8eb-7cf8-4d81-9be0-43015161a1fc",
          "port": "i6"
        },
        "vertices": [
          {
            "x": 192,
            "y": 552
          }
        ]
      },
      {
        "source": {
          "block": "78b3a92e-bf38-4739-93f6-10378fbec35f",
          "port": "out"
        },
        "target": {
          "block": "805da8eb-7cf8-4d81-9be0-43015161a1fc",
          "port": "i5"
        },
        "vertices": [
          {
            "x": 200,
            "y": 584
          }
        ]
      },
      {
        "source": {
          "block": "f58a59f9-f776-4ab0-a9fa-db37b8bd2a1f",
          "port": "out"
        },
        "target": {
          "block": "805da8eb-7cf8-4d81-9be0-43015161a1fc",
          "port": "i4"
        },
        "vertices": [
          {
            "x": 208,
            "y": 616
          }
        ]
      },
      {
        "source": {
          "block": "3eb348e0-2bd0-4ad1-8fdb-1f1be8d7cf43",
          "port": "out"
        },
        "target": {
          "block": "805da8eb-7cf8-4d81-9be0-43015161a1fc",
          "port": "i3"
        },
        "vertices": [
          {
            "x": 216,
            "y": 712
          }
        ]
      },
      {
        "source": {
          "block": "5984520c-1e49-451e-999a-368a9722ce81",
          "port": "out"
        },
        "target": {
          "block": "805da8eb-7cf8-4d81-9be0-43015161a1fc",
          "port": "i2"
        },
        "vertices": [
          {
            "x": 224,
            "y": 664
          }
        ]
      },
      {
        "source": {
          "block": "2ecdabbf-7990-436b-9cb1-994ce0755af3",
          "port": "out"
        },
        "target": {
          "block": "805da8eb-7cf8-4d81-9be0-43015161a1fc",
          "port": "i1"
        },
        "vertices": [
          {
            "x": 232,
            "y": 672
          }
        ]
      },
      {
        "source": {
          "block": "a656ab9a-ab78-4283-8b71-0af994c38071",
          "port": "out"
        },
        "target": {
          "block": "805da8eb-7cf8-4d81-9be0-43015161a1fc",
          "port": "i0"
        },
        "vertices": [
          {
            "x": 240,
            "y": 680
          }
        ]
      },
      {
        "source": {
          "block": "805da8eb-7cf8-4d81-9be0-43015161a1fc",
          "port": "s11"
        },
        "target": {
          "block": "9861e498-3d11-4426-ac0d-577d58d69e84",
          "port": "in"
        },
        "vertices": [
          {
            "x": 912,
            "y": 312
          }
        ]
      },
      {
        "source": {
          "block": "805da8eb-7cf8-4d81-9be0-43015161a1fc",
          "port": "s10"
        },
        "target": {
          "block": "3932d589-9e61-424e-af2e-fc48a3d49839",
          "port": "in"
        },
        "vertices": [
          {
            "x": 920,
            "y": 384
          }
        ]
      },
      {
        "source": {
          "block": "805da8eb-7cf8-4d81-9be0-43015161a1fc",
          "port": "s9"
        },
        "target": {
          "block": "913661ff-5232-4b8b-8c9f-5cde13af1118",
          "port": "in"
        },
        "vertices": [
          {
            "x": 920,
            "y": 448
          },
          {
            "x": 928,
            "y": 448
          },
          {
            "x": 928,
            "y": 440
          }
        ]
      },
      {
        "source": {
          "block": "805da8eb-7cf8-4d81-9be0-43015161a1fc",
          "port": "s8"
        },
        "target": {
          "block": "8cfc5a94-6f88-4066-93e0-959e1a6da669",
          "port": "in"
        }
      },
      {
        "source": {
          "block": "805da8eb-7cf8-4d81-9be0-43015161a1fc",
          "port": "s7"
        },
        "target": {
          "block": "f92a469e-f5df-4431-9562-2ec310d9afea",
          "port": "in"
        },
        "vertices": [
          {
            "x": 1024,
            "y": 552
          }
        ]
      },
      {
        "source": {
          "block": "805da8eb-7cf8-4d81-9be0-43015161a1fc",
          "port": "s6"
        },
        "target": {
          "block": "725c8b95-0ac4-42f7-b4eb-b7acc2aa5f50",
          "port": "in"
        },
        "vertices": [
          {
            "x": 1016,
            "y": 632
          }
        ]
      },
      {
        "source": {
          "block": "805da8eb-7cf8-4d81-9be0-43015161a1fc",
          "port": "s5"
        },
        "target": {
          "block": "d5ed0a9c-a288-4147-961f-a23ec360b77f",
          "port": "in"
        },
        "vertices": [
          {
            "x": 1008,
            "y": 720
          }
        ]
      },
      {
        "source": {
          "block": "805da8eb-7cf8-4d81-9be0-43015161a1fc",
          "port": "s4"
        },
        "target": {
          "block": "37c5dd9f-7596-4b45-bcb9-46a023d051f3",
          "port": "in"
        },
        "vertices": [
          {
            "x": 1000,
            "y": 800
          }
        ]
      },
      {
        "source": {
          "block": "805da8eb-7cf8-4d81-9be0-43015161a1fc",
          "port": "s3"
        },
        "target": {
          "block": "42353bdc-b109-4fa4-9383-5905be5330c5",
          "port": "in"
        },
        "vertices": [
          {
            "x": 992,
            "y": 880
          }
        ]
      },
      {
        "source": {
          "block": "805da8eb-7cf8-4d81-9be0-43015161a1fc",
          "port": "s2"
        },
        "target": {
          "block": "af7889b0-8599-4e6d-bc16-e7626700b26d",
          "port": "in"
        },
        "vertices": [
          {
            "x": 984,
            "y": 960
          }
        ]
      },
      {
        "source": {
          "block": "805da8eb-7cf8-4d81-9be0-43015161a1fc",
          "port": "s1"
        },
        "target": {
          "block": "0d14f442-7c1a-47d7-9cfd-20aef88c2e38",
          "port": "in"
        },
        "vertices": [
          {
            "x": 976,
            "y": 1032
          }
        ]
      },
      {
        "source": {
          "block": "805da8eb-7cf8-4d81-9be0-43015161a1fc",
          "port": "s0"
        },
        "target": {
          "block": "e1dcf5c3-647e-4f4a-8208-7d7127cc4e1c",
          "port": "in"
        },
        "vertices": [
          {
            "x": 968,
            "y": 1120
          }
        ]
      }
    ]
  },
  "deps": {}
}