.class public interface abstract Lcom/hivemq/client/util/TypeSwitch;
.super Ljava/lang/Object;
.source "TypeSwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/util/TypeSwitch$Never;,
        Lcom/hivemq/client/util/TypeSwitch$Default;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static never()Lcom/hivemq/client/util/TypeSwitch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/hivemq/client/util/TypeSwitch<",
            "TT;>;"
        }
    .end annotation

    .line 50
    sget-object v0, Lcom/hivemq/client/util/TypeSwitch$Never;->INSTANCE:Lcom/hivemq/client/util/TypeSwitch$Never;

    return-object v0
.end method

.method public static when(Ljava/lang/Object;)Lcom/hivemq/client/util/TypeSwitch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/hivemq/client/util/TypeSwitch<",
            "TT;>;"
        }
    .end annotation

    .line 61
    .local p0, "t":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    invoke-static {}, Lcom/hivemq/client/util/TypeSwitch;->never()Lcom/hivemq/client/util/TypeSwitch;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/hivemq/client/util/TypeSwitch$Default;

    invoke-direct {v0, p0}, Lcom/hivemq/client/util/TypeSwitch$Default;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public abstract is(Ljava/lang/Class;Ljava/util/function/Consumer;)Lcom/hivemq/client/util/TypeSwitch;
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
.end method
