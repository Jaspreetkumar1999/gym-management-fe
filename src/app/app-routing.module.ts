import { NgModule } from "@angular/core";
import { RouterModule, Routes } from "@angular/router";
import { FeaturesModule } from "./features/features.module";
import { SharedModule } from "./shared/shared.module";

const routes: Routes = [];

@NgModule({
  imports: [RouterModule.forRoot(routes), FeaturesModule, SharedModule],
  exports: [RouterModule],
})
export class AppRoutingModule {}
