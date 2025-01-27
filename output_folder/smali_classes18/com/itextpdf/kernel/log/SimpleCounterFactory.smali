.class public Lcom/itextpdf/kernel/log/SimpleCounterFactory;
.super Ljava/lang/Object;
.source "SimpleCounterFactory.java"

# interfaces
.implements Lcom/itextpdf/kernel/log/ICounterFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private counter:Lcom/itextpdf/kernel/log/ICounter;


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/log/ICounter;)V
    .locals 0
    .param p1, "counter"    # Lcom/itextpdf/kernel/log/ICounter;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/itextpdf/kernel/log/SimpleCounterFactory;->counter:Lcom/itextpdf/kernel/log/ICounter;

    .line 57
    return-void
.end method


# virtual methods
.method public getCounter(Ljava/lang/Class;)Lcom/itextpdf/kernel/log/ICounter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/itextpdf/kernel/log/ICounter;"
        }
    .end annotation

    .line 61
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/itextpdf/kernel/log/SimpleCounterFactory;->counter:Lcom/itextpdf/kernel/log/ICounter;

    return-object v0
.end method
