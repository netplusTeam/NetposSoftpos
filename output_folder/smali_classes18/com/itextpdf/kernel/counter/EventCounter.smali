.class public abstract Lcom/itextpdf/kernel/counter/EventCounter;
.super Ljava/lang/Object;
.source "EventCounter.java"


# instance fields
.field final fallback:Lcom/itextpdf/kernel/counter/context/IContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    sget-object v0, Lcom/itextpdf/kernel/counter/context/UnknownContext;->PERMISSIVE:Lcom/itextpdf/kernel/counter/context/IContext;

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/counter/EventCounter;-><init>(Lcom/itextpdf/kernel/counter/context/IContext;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/counter/context/IContext;)V
    .locals 2
    .param p1, "fallback"    # Lcom/itextpdf/kernel/counter/context/IContext;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    if-eqz p1, :cond_0

    .line 77
    iput-object p1, p0, Lcom/itextpdf/kernel/counter/EventCounter;->fallback:Lcom/itextpdf/kernel/counter/context/IContext;

    .line 78
    return-void

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The fallback context in EventCounter constructor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected abstract onEvent(Lcom/itextpdf/kernel/counter/event/IEvent;Lcom/itextpdf/kernel/counter/event/IMetaInfo;)V
.end method
