.class public final synthetic Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion$$ExternalSyntheticLambda6;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion$$ExternalSyntheticLambda6;->f$0:Landroid/content/Context;

    check-cast p1, Lcom/danbamitale/epmslib/entities/KeyHolder;

    invoke-static {v0, p1}, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;->$r8$lambda$CqE-BiPz9OsiAaqOSUmqiZia9jQ(Landroid/content/Context;Lcom/danbamitale/epmslib/entities/KeyHolder;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
