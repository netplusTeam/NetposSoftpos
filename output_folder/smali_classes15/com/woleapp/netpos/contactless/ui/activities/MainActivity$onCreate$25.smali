.class final Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$onCreate$25;
.super Lkotlin/jvm/internal/Lambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
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
.field final synthetic $terminalId:Ljava/lang/String;

.field final synthetic $userName:Ljava/lang/String;

.field final synthetic this$0:Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$onCreate$25;->this$0:Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$onCreate$25;->$terminalId:Ljava/lang/String;

    iput-object p3, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$onCreate$25;->$userName:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 588
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$onCreate$25;->invoke(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 3
    .param p1, "it"    # Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 589
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$onCreate$25;->this$0:Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$onCreate$25;->$terminalId:Ljava/lang/String;

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$onCreate$25;->$userName:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->access$sendTokenToBackend(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    return-void
.end method
