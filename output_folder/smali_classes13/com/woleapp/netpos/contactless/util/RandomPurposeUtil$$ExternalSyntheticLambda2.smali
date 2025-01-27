.class public final synthetic Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Landroid/app/AlertDialog;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$2:Landroidx/fragment/app/Fragment;


# direct methods
.method public synthetic constructor <init>(Landroid/app/AlertDialog;Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil$$ExternalSyntheticLambda2;->f$0:Landroid/app/AlertDialog;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil$$ExternalSyntheticLambda2;->f$1:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil$$ExternalSyntheticLambda2;->f$2:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil$$ExternalSyntheticLambda2;->f$0:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil$$ExternalSyntheticLambda2;->f$1:Lkotlin/jvm/functions/Function0;

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil$$ExternalSyntheticLambda2;->f$2:Landroidx/fragment/app/Fragment;

    check-cast p1, Lcom/woleapp/netpos/contactless/util/Resource;

    invoke-static {v0, v1, v2, p1}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->$r8$lambda$bt-f480dCHt5anSLvAXOuLwjzno(Landroid/app/AlertDialog;Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;Lcom/woleapp/netpos/contactless/util/Resource;)V

    return-void
.end method
