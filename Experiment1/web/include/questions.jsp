<form class="" action="validate.jsp" method="post">
    <div class="panel panel-success">
        <div class="panel-heading">
            <div style="text-align: left;">
                <h3 class="panel-title">题目列表</h3>
            </div>
        </div>
        <div class="panel-body">
            <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">

                <div class="panel panel-info">
                    <div class="panel-heading">
                        <a data-toggle="collapse" data-parent="#accordion" href="#singleChoice"
                           aria-expanded="false"
                           aria-controls="singleChoice">
                            <div style="text-align: left;">
                                <h3 class="panel-title">单选题(每题30分)</h3>
                            </div>
                        </a>
                    </div>
                    <div id="singleChoice" class="panel-collapse collapse in" role="tabpanel"
                         aria-labelledby="headingOne">
                        <div class="panel-body">
                            <div>
                                <div><h2>第1题：1+1=?</h2></div>
                                <label class="radio-inline">
                                    <input id="question1A" type="radio" name="question1" value="A" checked/>
                                    2
                                </label>
                                <label class="radio-inline">
                                    <input id="question1B" type="radio" name="question1" value="B"/>
                                    3
                                </label>
                                <label class="radio-inline">
                                    <input id="question1C" type="radio" name="question1" value="C"/>
                                    4
                                </label>
                                <label class="radio-inline">
                                    <input id="question1D" type="radio" name="question1" value="D"/>
                                    5
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <a data-toggle="collapse" data-parent="#accordion" href="#judgmentQuestion"
                           aria-expanded="false"
                           aria-controls="judgmentQuestion">
                            <div style="text-align: left;">
                                <h3 class="panel-title">判断题(每题30分)</h3>
                            </div>
                        </a>
                    </div>
                    <div id="judgmentQuestion" class="panel-collapse collapse" role="tabpane2"
                         aria-labelledby="headingTwo">
                        <div class="panel-body">
                            <div>
                                <div><h2>第2题：5+5=10对么？</h2></div>
                                <label class="radio-inline">
                                    <input id="question2A" type="radio" name="question2" value="A" checked/>
                                    √
                                </label>
                                <label class="radio-inline">
                                    <input id="question2B" type="radio" name="question2" value="B"/>
                                    X
                                </label>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <a data-toggle="collapse" data-parent="#accordion" href="#multipleChoice"
                           aria-expanded="false"
                           aria-controls="multipleChoice">
                            <div style="text-align: left;">
                                <h3 class="panel-title">多选题(每题40分)</h3>
                            </div>
                        </a>
                    </div>
                    <div id="multipleChoice" class="panel-collapse collapse" role="tabpane3"
                         aria-labelledby="headingThree">
                        <div class="panel-body">

                            <div>
                                <div><h2>第3题：下面哪个数字大于10？</h2></div>
                                <label class="checkbox-inline">
                                    <input id="question3A" type="checkbox" name="question3" value="A"/>
                                    9
                                </label>
                                <label class="radio-inline">
                                    <input id="question3B" type="checkbox" name="question3" value="B"/>
                                    10
                                </label>
                                <label class="radio-inline">
                                    <input id="question3C" type="checkbox" name="question3" value="C" checked/>
                                    11
                                </label>
                                <label class="radio-inline">
                                    <input id="question3D" type="checkbox" name="question3" value="D" checked/>
                                    12
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <button class="btn btn-info btn-large" type="submit">提交</button>
        </div>
    </div>
</form>
