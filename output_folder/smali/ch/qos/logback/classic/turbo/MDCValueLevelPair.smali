.class public Lch/qos/logback/classic/turbo/MDCValueLevelPair;
.super Ljava/lang/Object;
.source "MDCValueLevelPair.java"


# instance fields
.field private level:Lch/qos/logback/classic/Level;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLevel()Lch/qos/logback/classic/Level;
    .locals 1

    .line 37
    iget-object v0, p0, Lch/qos/logback/classic/turbo/MDCValueLevelPair;->level:Lch/qos/logback/classic/Level;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lch/qos/logback/classic/turbo/MDCValueLevelPair;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setLevel(Lch/qos/logback/classic/Level;)V
    .locals 0
    .param p1, "level"    # Lch/qos/logback/classic/Level;

    .line 41
    iput-object p1, p0, Lch/qos/logback/classic/turbo/MDCValueLevelPair;->level:Lch/qos/logback/classic/Level;

    .line 42
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lch/qos/logback/classic/turbo/MDCValueLevelPair;->value:Ljava/lang/String;

    .line 34
    return-void
.end method
