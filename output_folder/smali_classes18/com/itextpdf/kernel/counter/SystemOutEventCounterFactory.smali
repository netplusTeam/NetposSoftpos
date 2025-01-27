.class public Lcom/itextpdf/kernel/counter/SystemOutEventCounterFactory;
.super Ljava/lang/Object;
.source "SystemOutEventCounterFactory.java"

# interfaces
.implements Lcom/itextpdf/kernel/counter/IEventCounterFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 53
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/itextpdf/kernel/counter/SystemOutEventCounter;

    if-eqz p1, :cond_0

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/counter/SystemOutEventCounter;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Lcom/itextpdf/kernel/counter/SystemOutEventCounter;-><init>()V

    :goto_0
    return-object v0
.end method
