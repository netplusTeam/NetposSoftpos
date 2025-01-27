.class public abstract Lch/qos/logback/core/PropertyDefinerBase;
.super Lch/qos/logback/core/spi/ContextAwareBase;
.source "PropertyDefinerBase.java"

# interfaces
.implements Lch/qos/logback/core/spi/PropertyDefiner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    return-void
.end method

.method protected static booleanAsStr(Z)Ljava/lang/String;
    .locals 1
    .param p0, "bool"    # Z

    .line 27
    if-eqz p0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
