.class final Lcom/danbamitale/epmslib/processors/TerminalConfigurator$downloadNibssAID$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TerminalConfigurator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danbamitale/epmslib/processors/TerminalConfigurator;->downloadNibssAID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
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
        "Ljava/util/List<",
        "+",
        "Lcom/danbamitale/epmslib/entities/NibssAID;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u0016\u0012\u0004\u0012\u00020\u0002 \u0003*\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/danbamitale/epmslib/entities/NibssAID;",
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


# static fields
.field public static final INSTANCE:Lcom/danbamitale/epmslib/processors/TerminalConfigurator$downloadNibssAID$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/danbamitale/epmslib/processors/TerminalConfigurator$downloadNibssAID$1;

    invoke-direct {v0}, Lcom/danbamitale/epmslib/processors/TerminalConfigurator$downloadNibssAID$1;-><init>()V

    sput-object v0, Lcom/danbamitale/epmslib/processors/TerminalConfigurator$downloadNibssAID$1;->INSTANCE:Lcom/danbamitale/epmslib/processors/TerminalConfigurator$downloadNibssAID$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 349
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/danbamitale/epmslib/processors/TerminalConfigurator$downloadNibssAID$1;->invoke(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "it"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/danbamitale/epmslib/entities/NibssAID;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    sget-object v0, Lcom/danbamitale/epmslib/entities/NibssAID;->Companion:Lcom/danbamitale/epmslib/entities/NibssAID$Companion;

    invoke-virtual {v0, p1}, Lcom/danbamitale/epmslib/entities/NibssAID$Companion;->parseNibssResponse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
