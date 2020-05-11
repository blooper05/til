import { applyDecorators, SetMetadata, UseGuards } from '@nestjs/common';
// import { ApiBearerAuth, ApiUnauthorizedResponse } from '@nestjs/swagger';
import { Roles } from './roles.decorator';
import { RolesGuard } from '../guard/roles.guard'

export function Auth(...roles: string[]) {
  return applyDecorators(
    SetMetadata('roles', roles),
    UseGuards(RolesGuard),
    // UseGuards(AuthGuard, RolesGuard),
    // ApiBearerAuth(),
    // ApiUnauthorizedResponse({ description: 'Unauthorized"' }),
  );
}
