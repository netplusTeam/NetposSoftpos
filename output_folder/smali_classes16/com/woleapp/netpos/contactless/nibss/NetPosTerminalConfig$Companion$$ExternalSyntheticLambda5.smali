.class public final synthetic Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/danbamitale/epmslib/entities/KeyHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/danbamitale/epmslib/entities/KeyHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion$$ExternalSyntheticLambda5;->f$0:Lcom/danbamitale/epmslib/entities/KeyHolder;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion$$ExternalSyntheticLambda5;->f$0:Lcom/danbamitale/epmslib/entities/KeyHolder;

    check-cast p1, Lcom/danbamitale/epmslib/entities/ConfigData;

    invoke-static {v0, p1}, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;->$r8$lambda$AhB6WYny7KydX1Jk_kaqcNBL2y4(Lcom/danbamitale/epmslib/entities/KeyHolder;Lcom/danbamitale/epmslib/entities/ConfigData;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method
