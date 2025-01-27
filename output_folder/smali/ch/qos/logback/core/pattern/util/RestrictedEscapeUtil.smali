.class public Lch/qos/logback/core/pattern/util/RestrictedEscapeUtil;
.super Ljava/lang/Object;
.source "RestrictedEscapeUtil.java"

# interfaces
.implements Lch/qos/logback/core/pattern/util/IEscapeUtil;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public escape(Ljava/lang/String;Ljava/lang/StringBuffer;CI)V
    .locals 1
    .param p1, "escapeChars"    # Ljava/lang/String;
    .param p2, "buf"    # Ljava/lang/StringBuffer;
    .param p3, "next"    # C
    .param p4, "pointer"    # I

    .line 24
    invoke-virtual {p1, p3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 25
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 29
    :cond_0
    const-string v0, "\\"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 33
    :goto_0
    return-void
.end method
