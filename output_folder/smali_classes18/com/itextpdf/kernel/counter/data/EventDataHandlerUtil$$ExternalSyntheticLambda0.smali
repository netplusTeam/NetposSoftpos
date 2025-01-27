.class public final synthetic Lcom/itextpdf/kernel/counter/data/EventDataHandlerUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/itextpdf/kernel/counter/data/EventDataHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/itextpdf/kernel/counter/data/EventDataHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/kernel/counter/data/EventDataHandlerUtil$$ExternalSyntheticLambda0;->f$0:Lcom/itextpdf/kernel/counter/data/EventDataHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/itextpdf/kernel/counter/data/EventDataHandlerUtil$$ExternalSyntheticLambda0;->f$0:Lcom/itextpdf/kernel/counter/data/EventDataHandler;

    invoke-static {v0}, Lcom/itextpdf/kernel/counter/data/EventDataHandlerUtil;->lambda$registerTimedProcessing$0(Lcom/itextpdf/kernel/counter/data/EventDataHandler;)V

    return-void
.end method
