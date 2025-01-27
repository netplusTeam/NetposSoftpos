.class public final synthetic Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public synthetic constructor <init>(Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;Lkotlin/jvm/functions/Function0;Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil$$ExternalSyntheticLambda0;->f$0:Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    iput-object p4, p0, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil$$ExternalSyntheticLambda0;->f$3:Landroidx/fragment/app/FragmentManager;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil$$ExternalSyntheticLambda0;->f$0:Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function0;

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    iget-object v3, p0, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil$$ExternalSyntheticLambda0;->f$3:Landroidx/fragment/app/FragmentManager;

    check-cast p1, Lcom/woleapp/netpos/contactless/util/Resource;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->$r8$lambda$jq1th2heruZ0350V-gFzHftxc2k(Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;Lkotlin/jvm/functions/Function0;Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Lcom/woleapp/netpos/contactless/util/Resource;)V

    return-void
.end method
