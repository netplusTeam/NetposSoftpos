.class final Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$contactlessKernel$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/visa/app/ttpkernel/ContactlessKernel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lcom/visa/app/ttpkernel/ContactlessKernel;",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$contactlessKernel$2;->this$0:Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/visa/app/ttpkernel/ContactlessKernel;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$contactlessKernel$2;->this$0:Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/visa/app/ttpkernel/ContactlessKernel;->getInstance(Landroid/content/Context;)Lcom/visa/app/ttpkernel/ContactlessKernel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 108
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$contactlessKernel$2;->invoke()Lcom/visa/app/ttpkernel/ContactlessKernel;

    move-result-object v0

    return-object v0
.end method
