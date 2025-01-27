.class public Lch/qos/logback/core/rolling/helper/IntegerTokenConverter;
.super Lch/qos/logback/core/pattern/DynamicConverter;
.source "IntegerTokenConverter.java"

# interfaces
.implements Lch/qos/logback/core/rolling/helper/MonoTypedConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lch/qos/logback/core/pattern/DynamicConverter<",
        "Ljava/lang/Object;",
        ">;",
        "Lch/qos/logback/core/rolling/helper/MonoTypedConverter;"
    }
.end annotation


# static fields
.field public static final CONVERTER_KEY:Ljava/lang/String; = "i"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lch/qos/logback/core/pattern/DynamicConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public convert(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 33
    if-eqz p1, :cond_1

    .line 36
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 37
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    .line 38
    .local v0, "i":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/rolling/helper/IntegerTokenConverter;->convert(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 40
    .end local v0    # "i":Ljava/lang/Integer;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null argument forbidden"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isApplicable(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 44
    instance-of v0, p1, Ljava/lang/Integer;

    return v0
.end method
