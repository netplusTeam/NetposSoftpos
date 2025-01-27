.class public Lcom/hivemq/client/util/TypeSwitch$Default;
.super Ljava/lang/Object;
.source "TypeSwitch.java"

# interfaces
.implements Lcom/hivemq/client/util/TypeSwitch;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/util/TypeSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/hivemq/client/util/TypeSwitch<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final t:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 80
    .local p0, "this":Lcom/hivemq/client/util/TypeSwitch$Default;, "Lcom/hivemq/client/util/TypeSwitch$Default<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/hivemq/client/util/TypeSwitch$Default;->t:Ljava/lang/Object;

    .line 82
    return-void
.end method


# virtual methods
.method public is(Ljava/lang/Class;Ljava/util/function/Consumer;)Lcom/hivemq/client/util/TypeSwitch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:TT;>(",
            "Ljava/lang/Class<",
            "TI;>;",
            "Ljava/util/function/Consumer<",
            "TI;>;)",
            "Lcom/hivemq/client/util/TypeSwitch<",
            "TT;>;"
        }
    .end annotation

    .line 88
    .local p0, "this":Lcom/hivemq/client/util/TypeSwitch$Default;, "Lcom/hivemq/client/util/TypeSwitch$Default<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TI;>;"
    .local p2, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TI;>;"
    iget-object v0, p0, Lcom/hivemq/client/util/TypeSwitch$Default;->t:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/hivemq/client/util/TypeSwitch$Default;->t:Ljava/lang/Object;

    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 91
    invoke-static {}, Lcom/hivemq/client/util/TypeSwitch;->never()Lcom/hivemq/client/util/TypeSwitch;

    move-result-object v0

    return-object v0

    .line 93
    :cond_0
    return-object p0
.end method
