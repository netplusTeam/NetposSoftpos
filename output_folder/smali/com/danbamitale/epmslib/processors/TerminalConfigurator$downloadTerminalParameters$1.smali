.class final Lcom/danbamitale/epmslib/processors/TerminalConfigurator$downloadTerminalParameters$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TerminalConfigurator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danbamitale/epmslib/processors/TerminalConfigurator;->downloadTerminalParameters(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
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
        "Lcom/danbamitale/epmslib/entities/ConfigData;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lcom/danbamitale/epmslib/entities/ConfigData;",
        "kotlin.jvm.PlatformType",
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
.field final synthetic this$0:Lcom/danbamitale/epmslib/processors/TerminalConfigurator;


# direct methods
.method constructor <init>(Lcom/danbamitale/epmslib/processors/TerminalConfigurator;)V
    .locals 1

    iput-object p1, p0, Lcom/danbamitale/epmslib/processors/TerminalConfigurator$downloadTerminalParameters$1;->this$0:Lcom/danbamitale/epmslib/processors/TerminalConfigurator;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;)Lcom/danbamitale/epmslib/entities/ConfigData;
    .locals 1
    .param p1, "it"    # Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/danbamitale/epmslib/processors/TerminalConfigurator$downloadTerminalParameters$1;->this$0:Lcom/danbamitale/epmslib/processors/TerminalConfigurator;

    invoke-static {v0, p1}, Lcom/danbamitale/epmslib/processors/TerminalConfigurator;->access$parseField62(Lcom/danbamitale/epmslib/processors/TerminalConfigurator;Ljava/lang/String;)Lcom/danbamitale/epmslib/entities/ConfigData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 299
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/danbamitale/epmslib/processors/TerminalConfigurator$downloadTerminalParameters$1;->invoke(Ljava/lang/String;)Lcom/danbamitale/epmslib/entities/ConfigData;

    move-result-object v0

    return-object v0
.end method
