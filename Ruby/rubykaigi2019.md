## The Year of Concurrency
- ruby is good enough
- ruby is fast enough
- test and type annotation is not dry
    - Matz's personal opinion lol
- static analysis
    - type static definition
    - type profiler
    - static type checker
- performance
    - vm > mir > mjit
- concerancy
    - guild

## Ruby 3 Progress Report
- static analysis
    - type signature format
    - level 1 type checking tool
    - type signaturre prototypinig tool
    - level 2 type checking tool
- jit / ruby 3x3 / performance
    - MJIT
    - MIR
- concurrency
- pattern matching
- bundler will be merged to rubygems
- please set the multi-factor auth to rubygems.org

## How to use OpenAPI3 for API developer
- committee
- openapi_parser
- openapi-converter

## Write a Ruby interpreter in Ruby for Ruby 3
- sometimes faster than C implementation

## Compiling Ruby to idiomatic code in static languages
- compile Ruby to Nim
- pseudo
- py2nim
- ruby2nim
    - rubocop is converted almost properly

## A Bundle of Joy: Rewriting for Performance
- simple execution via bunlder or rubygems is slow
- https://gel.dev/

## Building Serverless Applications in Ruby with AWS Lambda
- AWS SAM CLI
- AWS SDK for Ruby
- aws-record

## Practical mruby/c firmware development with CRuby
- mrubyc-test
- mrubyc-debugger

## Zeitwerk: A new code loader
- classic Rails way
    - autoload paths and const_missing
    - nesting is unknown
    - not thread-safe
- Zeitwerk way
    - autoload paths and Module#autoload
    - no more `requrie`

## RubyData Workshop
- IRuby
    - lets Jupyter support Ruby
- Rumale (RUby MAchine LEarning)
    - scikit-learn in Ruby
- Docker image
    - RubyData/docker-stacks
    - supports Binder
- Try Jupyter
- Red Data Tools
- Charty
    - data visualization tool in Ruby
- Notebook
    - executable document
    - e.g.) Jupyter notebook
    - Jupyter -> iruby and rmarkdown -> rubydown
    - rubydown is better to generate some report document

## The fastest way to bootstrap Ruby on Rails
- CRIU
    - dump and restore processes
- Grenadine

## Homebrew
- Heredoc and `&:` syntax is cool

## Lightning Talks
- truffleruby
- Dark side of ruby macro
- Auto Differentiation
- Unicode
- 平成 to 令和
- mruby for postgresql
- vxlan vtep
- ETL ELT bricolage
- mruby for sar satellite
- Bad Source
- Trace point
- Differentiable

## Ruby Committers vs the World
- new syntax to call method (like a pipeline of elixir), and right assignment
    - `1..2 |> each do end`
    - `x |> method1(:method1) |> method2(:method2) ??? y`
- numbered parameters
    - `1.times do |i,| p i end`
    - `1.times do p @1 end`
    - `1.times do p it end`

## Cleaning up a huge ruby application
- talks about not executed code
- kitchencleaner
    - once in month
    - detect unnecessary code and create issue to delete it
    - controller which have no pv
    - not executed batch
    - find assigneee from git log
- iseq logger
    - logging code execution on production
    - booting time will be bit slower
- oneshot coverage
    - logging when the line is just executed
    - danmayer/coverband
    - riseshia/oneshot_coverage

## Best practices in web API client development
- we should implement api client as gem
    - even if there are only 1 application using it

## The future of the Bundled Bundler with RubyGems
- rubygems and bundler integration
- will be friendly with gel too

## Ruby Serverless Framework
- serverless = functions as a service
- Lambda's Hype
    - RAM
    - CPU
    - Network Speed
    - Max Timeout
    - Code Size Limit
    - Cold Starts
        - pre-warming
- API Gateway is front-door
- scheduled events of CloudWatch
- Jets
    - controller -> lambda
    - routes -> API Gateway
    - jobs -> CloudWatch
- security - auto remendation

## Red Chainer and Cumo: Practical Deep Learning in Ruby
- Red Chainer
    - speed
    - collaboration with other DNN frameworks
        - ONNX (using protocol buffer)
            - menoh-ruby is using it too
- Cumo
    - Red Chainer integration (NEW)
    - support faster CNN (NEW)
- ChainerX
    - written in C++

## Optimization Techniques Used by the Benchmark Winners
-
