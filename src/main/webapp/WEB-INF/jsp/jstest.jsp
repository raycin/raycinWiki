<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
    <title>jstest</title>
    <link type="text/css" rel="stylesheet" href="../style/jsmind.css" />
    <script type="text/javascript" src="../script/jsmind.js"></script>
</head>
<body>
<div id="jsmind_container"></div>

<script type="text/javascript">
    var mind = {
        // 3 data format supported ...
        // see Documents for more information
        meta:{
            name:'demo',
            author:'hizzgdev@163.com',
            version:'0.2'
        },
        format:'node_tree',
        data:
        {
            "id" : "test",
            "topic" : "test",
            "children" : [ {
                "id" : "逻辑模型",
                "topic" : "逻辑模型",
                "children" : [ {
                    "id" : "背景",
                    "topic" : "背景",
                    "children" : [ {
                        "id" : "大数据、开源运动",
                        "topic" : "大数据、开源运动",
                        "children" : [ ],
                        "level" : 3
                    }, {
                        "id" : "全球化的知识资源和人才库",
                        "topic" : "全球化的知识资源和人才库",
                        "children" : [ ],
                        "level" : 3
                    }, {
                        "id" : "学校作为活的知识库",
                        "topic" : "学校作为活的知识库",
                        "children" : [ ],
                        "level" : 3
                    }, {
                        "id" : "高效能的学校",
                        "topic" : "高效能的学校",
                        "children" : [ ],
                        "level" : 3
                    } ],
                    "level" : 2
                }, {
                    "id" : "目标（用户需求）",
                    "topic" : "目标（用户需求）",
                    "children" : [ {
                        "id" : "2016年跨学科系统集成设计挑战-自我提升与进化的系统",
                        "topic" : "2016年跨学科系统集成设计挑战-自我提升与进化的系统",
                        "children" : [ ],
                        "level" : 3
                    }, {
                        "id" : "2016年跨学科系统集成设计挑战-挑战设计方",
                        "topic" : "2016年跨学科系统集成设计挑战-挑战设计方",
                        "children" : [ ],
                        "level" : 3
                    }, {
                        "id" : "2016年跨学科系统集成设计挑战-任务执行方",
                        "topic" : "2016年跨学科系统集成设计挑战-任务执行方",
                        "children" : [ ],
                        "level" : 3
                    } ],
                    "level" : 2
                }, {
                    "id" : "效果（功能需求）",
                    "topic" : "效果（功能需求）",
                    "children" : [ {
                        "id" : "人才灵活重组：可以灵活调用不同的技术和专家，并且有一个明确的度量衡：明显比过去更快地找到知识面够广、技术够深的团队来解决问题（即能赶得上时代）；我们有这多不同专业的学生，需要能一起解决问题",
                        "topic" : "人才灵活重组：可以灵活调用不同的技术和专家，并且有一个明确的度量衡：明显比过去更快地找到知识面够广、技术够深的团队来解决问题（即能赶得上时代）；我们有这多不同专业的学生，需要能一起解决问题",
                        "children" : [ {
                            "id" : "2016年跨学科系统集成设计挑战-人才灵活重组度量衡",
                            "topic" : "2016年跨学科系统集成设计挑战-人才灵活重组度量衡",
                            "children" : [ ],
                            "level" : 4
                        } ],
                        "level" : 3
                    }, {
                        "id" : "群体顺畅协同：有一套标准的协议，使得各种有限资源使用的权利，经过这套协议，可以得到一定程度的满足，每个参与组织的内部调动可以得到流畅的、共享的平台",
                        "topic" : "群体顺畅协同：有一套标准的协议，使得各种有限资源使用的权利，经过这套协议，可以得到一定程度的满足，每个参与组织的内部调动可以得到流畅的、共享的平台",
                        "children" : [ {
                            "id" : "2016年跨学科系统集成设计挑战-有限资源使用的权利的协调",
                            "topic" : "2016年跨学科系统集成设计挑战-有限资源使用的权利的协调",
                            "children" : [ ],
                            "level" : 4
                        } ],
                        "level" : 3
                    }, {
                        "id" : "沙盘展示效果：缩小化沙盘或计算机仿真的方式来对未来的情况做某种程度上的预测或预演",
                        "topic" : "沙盘展示效果：缩小化沙盘或计算机仿真的方式来对未来的情况做某种程度上的预测或预演",
                        "children" : [ {
                            "id" : "2016年跨学科系统集成设计挑战-未来预测与预言",
                            "topic" : "2016年跨学科系统集成设计挑战-未来预测与预言",
                            "children" : [ ],
                            "level" : 4
                        } ],
                        "level" : 3
                    } ],
                    "level" : 2
                }, {
                    "id" : "输出（设计参数）",
                    "topic" : "输出（设计参数）",
                    "children" : [ {
                        "id" : "可供后续任务执行方反复访问与修订的实体沙盘，以及可作为模板参考的网页、宣传文件",
                        "topic" : "可供后续任务执行方反复访问与修订的实体沙盘，以及可作为模板参考的网页、宣传文件",
                        "children" : [ {
                            "id" : "2016年跨学科系统集成设计挑战-沙盘",
                            "topic" : "2016年跨学科系统集成设计挑战-沙盘",
                            "children" : [ {
                                "id" : "2016年跨学科系统集成设计挑战-沙盘-智能办公室",
                                "topic" : "2016年跨学科系统集成设计挑战-沙盘-智能办公室",
                                "children" : [ ],
                                "level" : 5
                            }, {
                                "id" : "2016年跨学科系统集成设计挑战-沙盘-李兆基大楼",
                                "topic" : "2016年跨学科系统集成设计挑战-沙盘-李兆基大楼",
                                "children" : [ ],
                                "level" : 5
                            }, {
                                "id" : "2016年跨学科系统集成设计挑战-沙盘-清华云地图",
                                "topic" : "2016年跨学科系统集成设计挑战-沙盘-清华云地图",
                                "children" : [ ],
                                "level" : 5
                            } ],
                            "level" : 4
                        }, {
                            "id" : "2016年跨学科系统集成设计挑战-宣传视频",
                            "topic" : "2016年跨学科系统集成设计挑战-宣传视频",
                            "children" : [ ],
                            "level" : 4
                        }, {
                            "id" : "2016年跨学科系统集成设计挑战-宣传折页",
                            "topic" : "2016年跨学科系统集成设计挑战-宣传折页",
                            "children" : [ ],
                            "level" : 4
                        }, {
                            "id" : "2016年跨学科系统集成设计挑战-课程独立网页",
                            "topic" : "2016年跨学科系统集成设计挑战-课程独立网页",
                            "children" : [ ],
                            "level" : 4
                        } ],
                        "level" : 3
                    }, {
                        "id" : "可供后续任务执行方反复访问与修订的数字化知识库，包括课程执行过程中的各种过程数据，如视频、总结性文件等",
                        "topic" : "可供后续任务执行方反复访问与修订的数字化知识库，包括课程执行过程中的各种过程数据，如视频、总结性文件等",
                        "children" : [ {
                            "id" : "2016年跨学科系统集成设计挑战-小组学习报告",
                            "topic" : "2016年跨学科系统集成设计挑战-小组学习报告",
                            "children" : [ ],
                            "level" : 4
                        }, {
                            "id" : "2016年跨学科系统集成设计挑战-个人学习报告",
                            "topic" : "2016年跨学科系统集成设计挑战-个人学习报告",
                            "children" : [ ],
                            "level" : 4
                        }, {
                            "id" : "2016年跨学科系统集成设计挑战-学习过程报表",
                            "topic" : "2016年跨学科系统集成设计挑战-学习过程报表",
                            "children" : [ ],
                            "level" : 4
                        }, {
                            "id" : "2016年跨学科系统集成设计挑战-各团队协议",
                            "topic" : "2016年跨学科系统集成设计挑战-各团队协议",
                            "children" : [ ],
                            "level" : 4
                        }, {
                            "id" : "2016年跨学科系统集成设计挑战-各团队不同版本的协议",
                            "topic" : "2016年跨学科系统集成设计挑战-各团队不同版本的协议",
                            "children" : [ ],
                            "level" : 4
                        }, {
                            "id" : "2016年跨学科系统集成设计挑战-过程视频",
                            "topic" : "2016年跨学科系统集成设计挑战-过程视频",
                            "children" : [ ],
                            "level" : 4
                        }, {
                            "id" : "2016年跨学科系统集成设计挑战-过程文件",
                            "topic" : "2016年跨学科系统集成设计挑战-过程文件",
                            "children" : [ ],
                            "level" : 4
                        } ],
                        "level" : 3
                    }, {
                        "id" : "采集各类知识内容的访问量或器材资源的消耗数量",
                        "topic" : "采集各类知识内容的访问量或器材资源的消耗数量",
                        "children" : [ {
                            "id" : "2016年跨学科系统集成设计挑战-知识内容的访问量",
                            "topic" : "2016年跨学科系统集成设计挑战-知识内容的访问量",
                            "children" : [ ],
                            "level" : 4
                        }, {
                            "id" : "2016年跨学科系统集成设计挑战-器材资源的消耗数量",
                            "topic" : "2016年跨学科系统集成设计挑战-器材资源的消耗数量",
                            "children" : [ ],
                            "level" : 4
                        } ],
                        "level" : 3
                    }, {
                        "id" : "经过各类人工或自动化手段所整理出来的引导性文件或测试能力用的题库与统计方式",
                        "topic" : "经过各类人工或自动化手段所整理出来的引导性文件或测试能力用的题库与统计方式",
                        "children" : [ {
                            "id" : "2016年跨学科系统集成设计挑战-引导性文件",
                            "topic" : "2016年跨学科系统集成设计挑战-引导性文件",
                            "children" : [ ],
                            "level" : 4
                        }, {
                            "id" : "2016年跨学科系统集成设计挑战-测试能力用的题库与统计方式",
                            "topic" : "2016年跨学科系统集成设计挑战-测试能力用的题库与统计方式",
                            "children" : [ ],
                            "level" : 4
                        } ],
                        "level" : 3
                    } ],
                    "level" : 2
                }, {
                    "id" : "过程（工作流程）",
                    "topic" : "过程（工作流程）",
                    "children" : [ {
                        "id" : "挑战设计方的准备工作",
                        "topic" : "挑战设计方的准备工作",
                        "children" : [ {
                            "id" : "2016年跨学科系统集成设计挑战-人员表",
                            "topic" : "2016年跨学科系统集成设计挑战-人员表",
                            "children" : [ ],
                            "level" : 4
                        }, {
                            "id" : "2016年跨学科系统集成设计挑战-资源表",
                            "topic" : "2016年跨学科系统集成设计挑战-资源表",
                            "children" : [ ],
                            "level" : 4
                        }, {
                            "id" : "2016年跨学科系统集成设计挑战-预算表",
                            "topic" : "2016年跨学科系统集成设计挑战-预算表",
                            "children" : [ ],
                            "level" : 4
                        }, {
                            "id" : "2016年跨学科系统集成设计挑战-环节测试",
                            "topic" : "2016年跨学科系统集成设计挑战-环节测试",
                            "children" : [ ],
                            "level" : 4
                        }, {
                            "id" : "2016年跨学科系统集成设计挑战-硬件开发",
                            "topic" : "2016年跨学科系统集成设计挑战-硬件开发",
                            "children" : [ ],
                            "level" : 4
                        }, {
                            "id" : "2016年跨学科系统集成设计挑战-软件开发",
                            "topic" : "2016年跨学科系统集成设计挑战-软件开发",
                            "children" : [ ],
                            "level" : 4
                        }, {
                            "id" : "2016年跨学科系统集成设计挑战-学生会面记录",
                            "topic" : "2016年跨学科系统集成设计挑战-学生会面记录",
                            "children" : [ ],
                            "level" : 4
                        }, {
                            "id" : "2016年跨学科系统集成设计挑战-挑战方会议记录",
                            "topic" : "2016年跨学科系统集成设计挑战-挑战方会议记录",
                            "children" : [ ],
                            "level" : 4
                        } ],
                        "level" : 3
                    }, {
                        "id" : "任务执行方在四天(连续80小时)之前的准备过程",
                        "topic" : "任务执行方在四天(连续80小时)之前的准备过程",
                        "children" : [ {
                            "id" : "2016年跨学科系统集成设计挑战-学习记录",
                            "topic" : "2016年跨学科系统集成设计挑战-学习记录",
                            "children" : [ ],
                            "level" : 4
                        }, {
                            "id" : "2016年跨学科系统集成设计挑战-故事设计",
                            "topic" : "2016年跨学科系统集成设计挑战-故事设计",
                            "children" : [ ],
                            "level" : 4
                        }, {
                            "id" : "2016年跨学科系统集成设计挑战-过程展示",
                            "topic" : "2016年跨学科系统集成设计挑战-过程展示",
                            "children" : [ ],
                            "level" : 4
                        } ],
                        "level" : 3
                    }, {
                        "id" : "任务执行方的四天(连续80小时)体验过程",
                        "topic" : "任务执行方的四天(连续80小时)体验过程",
                        "children" : [ {
                            "id" : "2016年跨学科系统集成设计挑战-第一天",
                            "topic" : "2016年跨学科系统集成设计挑战-第一天",
                            "children" : [ ],
                            "level" : 4
                        }, {
                            "id" : "2016年跨学科系统集成设计挑战-第二天",
                            "topic" : "2016年跨学科系统集成设计挑战-第二天",
                            "children" : [ ],
                            "level" : 4
                        }, {
                            "id" : "2016年跨学科系统集成设计挑战-第三天",
                            "topic" : "2016年跨学科系统集成设计挑战-第三天",
                            "children" : [ ],
                            "level" : 4
                        }, {
                            "id" : "2016年跨学科系统集成设计挑战-第四天",
                            "topic" : "2016年跨学科系统集成设计挑战-第四天",
                            "children" : [ ],
                            "level" : 4
                        } ],
                        "level" : 3
                    }, {
                        "id" : "全体参与者的成果展示会",
                        "topic" : "全体参与者的成果展示会",
                        "children" : [ {
                            "id" : "2016年跨学科系统集成设计挑战-任务执行方展示准备",
                            "topic" : "2016年跨学科系统集成设计挑战-任务执行方展示准备",
                            "children" : [ ],
                            "level" : 4
                        }, {
                            "id" : "2016年跨学科系统集成设计挑战-展示现场记录",
                            "topic" : "2016年跨学科系统集成设计挑战-展示现场记录",
                            "children" : [ ],
                            "level" : 4
                        } ],
                        "level" : 3
                    }, {
                        "id" : "挑战设计方的知识库编撰工作",
                        "topic" : "挑战设计方的知识库编撰工作",
                        "children" : [ {
                            "id" : "2016年跨学科系统集成设计挑战-知识库编撰过程记录",
                            "topic" : "2016年跨学科系统集成设计挑战-知识库编撰过程记录",
                            "children" : [ ],
                            "level" : 4
                        } ],
                        "level" : 3
                    } ],
                    "level" : 2
                }, {
                    "id" : "输入（资源准备）",
                    "topic" : "输入（资源准备）",
                    "children" : [ {
                        "id" : "格式规范",
                        "topic" : "格式规范",
                        "children" : [ {
                            "id" : ":File:文后参考文献著录规则（中华人民共和国国家标准）.pdf|文后参考文献著录规则, http://www.aqsiq.gov.cn/ 中华人民共和国国家质量监督检验检疫总局 与 http://www.sac.gov.cn/ 中国国家标准化管理委员会 于 2005年3月23日发布",
                            "topic" : ":File:文后参考文献著录规则（中华人民共和国国家标准）.pdf|文后参考文献著录规则, http://www.aqsiq.gov.cn/ 中华人民共和国国家质量监督检验检疫总局 与 http://www.sac.gov.cn/ 中国国家标准化管理委员会 于 2005年3月23日发布",
                            "children" : [ ],
                            "level" : 4
                        }, {
                            "id" : "2016年跨学科系统集成设计挑战-宪章",
                            "topic" : "2016年跨学科系统集成设计挑战-宪章",
                            "children" : [ ],
                            "level" : 4
                        }, {
                            "id" : "http://www.wikihow.com/Write-a-Constitution How to write a constitution from Wikihow.com",
                            "topic" : "http://www.wikihow.com/Write-a-Constitution How to write a constitution from Wikihow.com",
                            "children" : [ ],
                            "level" : 4
                        }, {
                            "id" : "https://www.wolfram.com/language/elementary-introduction/ An Elementary Introduction to the Wolfram Language by Stephen Wolfram",
                            "topic" : "https://www.wolfram.com/language/elementary-introduction/ An Elementary Introduction to the Wolfram Language by Stephen Wolfram",
                            "children" : [ ],
                            "level" : 4
                        }, {
                            "id" : "2016年跨学科系统集成设计挑战-信息与流程模块化协议",
                            "topic" : "2016年跨学科系统集成设计挑战-信息与流程模块化协议",
                            "children" : [ ],
                            "level" : 4
                        } ],
                        "level" : 3
                    }, {
                        "id" : "2016年跨学科系统集成设计挑战-任务执行方名单及联系方式",
                        "topic" : "2016年跨学科系统集成设计挑战-任务执行方名单及联系方式",
                        "children" : [ ],
                        "level" : 3
                    }, {
                        "id" : "挑战设计方团队",
                        "topic" : "挑战设计方团队",
                        "children" : [ {
                            "id" : "2016年跨学科系统集成设计挑战-刘思远 软件团队",
                            "topic" : "2016年跨学科系统集成设计挑战-刘思远 软件团队",
                            "children" : [ ],
                            "level" : 4
                        }, {
                            "id" : "2016年跨学科系统集成设计挑战-i.Center老师",
                            "topic" : "2016年跨学科系统集成设计挑战-i.Center老师",
                            "children" : [ ],
                            "level" : 4
                        }, {
                            "id" : "2016年跨学科系统集成设计挑战-张泽龙、杨思成",
                            "topic" : "2016年跨学科系统集成设计挑战-张泽龙、杨思成",
                            "children" : [ ],
                            "level" : 4
                        }, {
                            "id" : "2016年跨学科系统集成设计挑战-黑龙江建筑职业技术学校",
                            "topic" : "2016年跨学科系统集成设计挑战-黑龙江建筑职业技术学校",
                            "children" : [ ],
                            "level" : 4
                        }, {
                            "id" : "2016年跨学科系统集成设计挑战-清华大学附属中学",
                            "topic" : "2016年跨学科系统集成设计挑战-清华大学附属中学",
                            "children" : [ ],
                            "level" : 4
                        }, {
                            "id" : "2016年跨学科系统集成设计挑战-计分组",
                            "topic" : "2016年跨学科系统集成设计挑战-计分组",
                            "children" : [ ],
                            "level" : 4
                        }, {
                            "id" : "2016年跨学科系统集成设计挑战-市场部",
                            "topic" : "2016年跨学科系统集成设计挑战-市场部",
                            "children" : [ ],
                            "level" : 4
                        }, {
                            "id" : "2016年跨学科系统集成设计挑战—法院",
                            "topic" : "2016年跨学科系统集成设计挑战—法院",
                            "children" : [ ],
                            "level" : 4
                        } ],
                        "level" : 3
                    }, {
                        "id" : "器材类",
                        "topic" : "器材类",
                        "children" : [ {
                            "id" : "2016年跨学科系统集成设计挑战-宏观层面器材",
                            "topic" : "2016年跨学科系统集成设计挑战-宏观层面器材",
                            "children" : [ ],
                            "level" : 4
                        }, {
                            "id" : "2016年跨学科系统集成设计挑战-介观层面器材",
                            "topic" : "2016年跨学科系统集成设计挑战-介观层面器材",
                            "children" : [ ],
                            "level" : 4
                        }, {
                            "id" : "2016年跨学科系统集成设计挑战-微观层面器材",
                            "topic" : "2016年跨学科系统集成设计挑战-微观层面器材",
                            "children" : [ ],
                            "level" : 4
                        } ],
                        "level" : 3
                    }, {
                        "id" : "理论基础",
                        "topic" : "理论基础",
                        "children" : [ {
                            "id" : "跨学科系统集成设计挑战——影响教学的四种力量",
                            "topic" : "跨学科系统集成设计挑战——影响教学的四种力量",
                            "children" : [ ],
                            "level" : 4
                        }, {
                            "id" : "《Code is Law- Does Anyone Get This Yet》",
                            "topic" : "《Code is Law- Does Anyone Get This Yet》",
                            "children" : [ ],
                            "level" : 4
                        } ],
                        "level" : 3
                    }, {
                        "id" : "场地",
                        "topic" : "场地",
                        "children" : [ {
                            "id" : "顾学雍老师办公室",
                            "topic" : "顾学雍老师办公室",
                            "children" : [ ],
                            "level" : 4
                        }, {
                            "id" : "iCenter 565房间",
                            "topic" : "iCenter 565房间",
                            "children" : [ ],
                            "level" : 4
                        } ],
                        "level" : 3
                    } ],
                    "level" : 2
                } ],
                "level" : 1
            }, {
                "id" : "版权声明",
                "topic" : "版权声明",
                "children" : [ ],
                "level" : 1
            } ],
            "level" : 0
        }
    };
    var options = {
        container:'jsmind_container',
        editable:false,
        theme:'orange'
    };
    var jm = new jsMind(options);
    jm.show(mind);
</script>
</body>

</html>
