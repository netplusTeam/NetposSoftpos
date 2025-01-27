.class public Lch/qos/logback/classic/spi/StackTraceElementProxy;
.super Ljava/lang/Object;
.source "StackTraceElementProxy.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x20f378eaeeecbcceL


# instance fields
.field private cpd:Lch/qos/logback/classic/spi/ClassPackagingData;

.field final ste:Ljava/lang/StackTraceElement;

.field private transient steAsString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/StackTraceElement;)V
    .locals 2
    .param p1, "ste"    # Ljava/lang/StackTraceElement;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-eqz p1, :cond_0

    .line 32
    iput-object p1, p0, Lch/qos/logback/classic/spi/StackTraceElementProxy;->ste:Ljava/lang/StackTraceElement;

    .line 33
    return-void

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ste cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 64
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 65
    return v0

    .line 66
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 67
    return v1

    .line 68
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 69
    return v1

    .line 70
    :cond_2
    move-object v2, p1

    check-cast v2, Lch/qos/logback/classic/spi/StackTraceElementProxy;

    .line 72
    .local v2, "other":Lch/qos/logback/classic/spi/StackTraceElementProxy;
    iget-object v3, p0, Lch/qos/logback/classic/spi/StackTraceElementProxy;->ste:Ljava/lang/StackTraceElement;

    iget-object v4, v2, Lch/qos/logback/classic/spi/StackTraceElementProxy;->ste:Ljava/lang/StackTraceElement;

    invoke-virtual {v3, v4}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 73
    return v1

    .line 75
    :cond_3
    iget-object v3, p0, Lch/qos/logback/classic/spi/StackTraceElementProxy;->cpd:Lch/qos/logback/classic/spi/ClassPackagingData;

    if-nez v3, :cond_4

    .line 76
    iget-object v3, v2, Lch/qos/logback/classic/spi/StackTraceElementProxy;->cpd:Lch/qos/logback/classic/spi/ClassPackagingData;

    if-eqz v3, :cond_5

    .line 77
    return v1

    .line 79
    :cond_4
    iget-object v4, v2, Lch/qos/logback/classic/spi/StackTraceElementProxy;->cpd:Lch/qos/logback/classic/spi/ClassPackagingData;

    invoke-virtual {v3, v4}, Lch/qos/logback/classic/spi/ClassPackagingData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 80
    return v1

    .line 82
    :cond_5
    return v0
.end method

.method public getClassPackagingData()Lch/qos/logback/classic/spi/ClassPackagingData;
    .locals 1

    .line 54
    iget-object v0, p0, Lch/qos/logback/classic/spi/StackTraceElementProxy;->cpd:Lch/qos/logback/classic/spi/ClassPackagingData;

    return-object v0
.end method

.method public getSTEAsString()Ljava/lang/String;
    .locals 2

    .line 36
    iget-object v0, p0, Lch/qos/logback/classic/spi/StackTraceElementProxy;->steAsString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/classic/spi/StackTraceElementProxy;->ste:Ljava/lang/StackTraceElement;

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/classic/spi/StackTraceElementProxy;->steAsString:Ljava/lang/String;

    .line 39
    :cond_0
    iget-object v0, p0, Lch/qos/logback/classic/spi/StackTraceElementProxy;->steAsString:Ljava/lang/String;

    return-object v0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 1

    .line 43
    iget-object v0, p0, Lch/qos/logback/classic/spi/StackTraceElementProxy;->ste:Ljava/lang/StackTraceElement;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 59
    iget-object v0, p0, Lch/qos/logback/classic/spi/StackTraceElementProxy;->ste:Ljava/lang/StackTraceElement;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->hashCode()I

    move-result v0

    return v0
.end method

.method public setClassPackagingData(Lch/qos/logback/classic/spi/ClassPackagingData;)V
    .locals 2
    .param p1, "cpd"    # Lch/qos/logback/classic/spi/ClassPackagingData;

    .line 47
    iget-object v0, p0, Lch/qos/logback/classic/spi/StackTraceElementProxy;->cpd:Lch/qos/logback/classic/spi/ClassPackagingData;

    if-nez v0, :cond_0

    .line 50
    iput-object p1, p0, Lch/qos/logback/classic/spi/StackTraceElementProxy;->cpd:Lch/qos/logback/classic/spi/ClassPackagingData;

    .line 51
    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Packaging data has been already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 87
    invoke-virtual {p0}, Lch/qos/logback/classic/spi/StackTraceElementProxy;->getSTEAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
