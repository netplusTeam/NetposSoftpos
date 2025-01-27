.class public Lcom/itextpdf/kernel/counter/SimpleEventCounterFactory;
.super Ljava/lang/Object;
.source "SimpleEventCounterFactory.java"

# interfaces
.implements Lcom/itextpdf/kernel/counter/IEventCounterFactory;


# instance fields
.field private counter:Lcom/itextpdf/kernel/counter/EventCounter;


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/counter/EventCounter;)V
    .locals 0
    .param p1, "counter"    # Lcom/itextpdf/kernel/counter/EventCounter;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/itextpdf/kernel/counter/SimpleEventCounterFactory;->counter:Lcom/itextpdf/kernel/counter/EventCounter;

    .line 55
    return-void
.end method


# virtual methods
.method public getCounter(Ljava/lang/Class;)Lcom/itextpdf/kernel/counter/EventCounter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/itextpdf/kernel/counter/EventCounter;"
        }
    .end annotation

    .line 59
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/itextpdf/kernel/counter/SimpleEventCounterFactory;->counter:Lcom/itextpdf/kernel/counter/EventCounter;

    return-object v0
.end method
