.class public final Lcom/itextpdf/io/util/EnumUtil;
.super Ljava/lang/Object;
.source "EnumUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static throwIfNull(Ljava/lang/Enum;)Ljava/lang/Enum;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(TT;)TT;"
        }
    .end annotation

    .line 54
    .local p0, "enumInstance":Ljava/lang/Enum;, "TT;"
    if-eqz p0, :cond_0

    .line 57
    return-object p0

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expected not null enum instance"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
