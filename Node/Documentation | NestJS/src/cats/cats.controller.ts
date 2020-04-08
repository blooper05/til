import { Controller, Get, Req, Post, HttpCode, Header, Redirect, Query, Param, Body } from '@nestjs/common';
import { Request } from 'express';
import { Observable, of } from 'rxjs';
import { CreateCatDto } from './dto/create-cat.dto';

@Controller('cats')
export class CatsController {
  @Post()
  @HttpCode(204)
  @Header('Cache-Control', 'none')
  create(@Body() createCatDto: CreateCatDto): string {
    return 'This action adds a new cat';
  }

  @Get('ab*cd')
  async findAll(@Req() request: Request): Promise<string> {
    return `This action returns all cats, to IP Address: ${request.ip}`;
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
