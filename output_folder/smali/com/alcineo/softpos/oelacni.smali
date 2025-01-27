.class public Lcom/alcineo/softpos/oelacni;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native acileon([B)Ljava/util/Date;
.end method

.method public static acileon(II)[B
    .locals 1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x30

    invoke-static {p0, p1, v0}, Lcom/google/common/base/Strings;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alcineo/softpos/oelacni;->acileon(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static native acileon(Ljava/lang/String;)[B
.end method

.method public static native acileon(Ljava/math/BigDecimal;)[B
.end method

.method public static acileon(Ljava/math/BigDecimal;I)[B
    .locals 2

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\."

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-lez p1, :cond_0

    const/16 v0, 0x30

    invoke-static {p0, p1, v0}, Lcom/google/common/base/Strings;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Lcom/alcineo/softpos/oelacni;->acileon(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static native acileon(Ljava/util/Date;)[B
.end method

.method public static native aoleinc([B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation
.end method
