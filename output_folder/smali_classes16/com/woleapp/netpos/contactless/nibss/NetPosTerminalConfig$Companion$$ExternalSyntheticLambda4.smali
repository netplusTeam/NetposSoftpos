.class public final synthetic Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/BiConsumer;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field public final synthetic f$2:Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;


# direct methods
.method public synthetic constructor <init>(ZLandroidx/localbroadcastmanager/content/LocalBroadcastManager;Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion$$ExternalSyntheticLambda4;->f$0:Z

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion$$ExternalSyntheticLambda4;->f$1:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iput-object p3, p0, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion$$ExternalSyntheticLambda4;->f$2:Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-boolean v0, p0, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion$$ExternalSyntheticLambda4;->f$0:Z

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion$$ExternalSyntheticLambda4;->f$1:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion$$ExternalSyntheticLambda4;->f$2:Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;

    check-cast p1, Lkotlin/Pair;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;->$r8$lambda$Z6KO6LFNCot4NSRn-JIC_toLwFU(ZLandroidx/localbroadcastmanager/content/LocalBroadcastManager;Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;Lkotlin/Pair;Ljava/lang/Throwable;)V

    return-void
.end method
