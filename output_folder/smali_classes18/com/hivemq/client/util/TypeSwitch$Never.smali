.class public Lcom/hivemq/client/util/TypeSwitch$Never;
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
    name = "Never"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/hivemq/client/util/TypeSwitch<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/hivemq/client/util/TypeSwitch$Never;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 99
    new-instance v0, Lcom/hivemq/client/util/TypeSwitch$Never;

    invoke-direct {v0}, Lcom/hivemq/client/util/TypeSwitch$Never;-><init>()V

    sput-object v0, Lcom/hivemq/client/util/TypeSwitch$Never;->INSTANCE:Lcom/hivemq/client/util/TypeSwitch$Never;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public is(Ljava/lang/Class;Ljava/util/function/Consumer;)Lcom/hivemq/client/util/TypeSwitch$Never;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TI;>;",
            "Ljava/util/function/Consumer<",
            "TI;>;)",
            "Lcom/hivemq/client/util/TypeSwitch$Never;"
        }
    .end annotation

    .line 105
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TI;>;"
    .local p2, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TI;>;"
    return-object p0
.end method

.method public bridge synthetic is(Ljava/lang/Class;Ljava/util/function/Consumer;)Lcom/hivemq/client/util/TypeSwitch;
    .locals 0

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/hivemq/client/util/TypeSwitch$Never;->is(Ljava/lang/Class;Ljava/util/function/Consumer;)Lcom/hivemq/client/util/TypeSwitch$Never;

    move-result-object p1

    return-object p1
.end method
