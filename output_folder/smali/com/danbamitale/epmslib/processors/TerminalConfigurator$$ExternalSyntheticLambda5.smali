.class public final synthetic Lcom/danbamitale/epmslib/processors/TerminalConfigurator$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/danbamitale/epmslib/processors/TerminalConfigurator$$ExternalSyntheticLambda5;->f$0:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/danbamitale/epmslib/processors/TerminalConfigurator$$ExternalSyntheticLambda5;->f$0:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p1}, Lcom/danbamitale/epmslib/processors/TerminalConfigurator;->$r8$lambda$qrBNCgLoUCmd3lYUZGxf0g4nk24(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
