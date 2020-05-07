import { Controller, Get, Req, Post, HttpCode, Header, Redirect, Query, Param, Body, UseFilters } from '@nestjs/common';
import { Request } from 'express';
import { Observable, of } from 'rxjs';
import { HttpExceptionFilter } from '../common/filter/http-exception.filter'
import { ForbiddenException } from '../common/exception/forbidden.exception'
import { CreateCatDto } from './dto/create-cat.dto';
import { CatsService } from './cats.service';
import { Cat } from './interfaces/cat.interface';

@UseFilters(HttpExceptionFilter)
@Controller('cats')
export class CatsController {
  constructor(private catsService: CatsService) {}

  @Post()
  @HttpCode(204)
  @Header('Cache-Control', 'none')
  create(@Body() createCatDto: CreateCatDto) {
    this.catsService.create(createCatDto);
  }

  @Get()
  async findAll(): Promise<Cat[]> {
    // return this.catsService.findAll();
    throw new ForbiddenException();
  }

  @Get(':id')
  findOne(@Param('id') id): Observable<string> {
    return of(`This action returns a ${id} cat`);
  }

  @Get('docs')
  @Redirect('https://docs.nestjs.com/', 302)
  getDocs(@Query('version') version) {
    if (version && version === '5') {
      return { url: 'https://docs.nestjs.com/v5/' };
    }
  }
}
