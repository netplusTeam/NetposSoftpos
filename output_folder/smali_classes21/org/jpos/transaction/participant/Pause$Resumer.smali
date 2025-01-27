.class Lorg/jpos/transaction/participant/Pause$Resumer;
.super Ljava/lang/Object;
.source "Pause.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/transaction/participant/Pause;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Resumer"
.end annotation


# instance fields
.field ctx:Lorg/jpos/transaction/Context;


# direct methods
.method public constructor <init>(Lorg/jpos/transaction/Context;)V
    .locals 0
    .param p1, "ctx"    # Lorg/jpos/transaction/Context;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/jpos/transaction/participant/Pause$Resumer;->ctx:Lorg/jpos/transaction/Context;

    .line 49
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/jpos/transaction/participant/Pause$Resumer;->ctx:Lorg/jpos/transaction/Context;

    invoke-virtual {v0}, Lorg/jpos/transaction/Context;->resume()V

    .line 53
    return-void
.end method
