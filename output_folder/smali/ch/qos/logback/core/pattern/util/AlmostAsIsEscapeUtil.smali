.class public Lch/qos/logback/core/pattern/util/AlmostAsIsEscapeUtil;
.super Lch/qos/logback/core/pattern/util/RestrictedEscapeUtil;
.source "AlmostAsIsEscapeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lch/qos/logback/core/pattern/util/RestrictedEscapeUtil;-><init>()V

    return-void
.end method


# virtual methods
.method public escape(Ljava/lang/String;Ljava/lang/StringBuffer;CI)V
    .locals 1
    .param p1, "escapeChars"    # Ljava/lang/String;
    .param p2, "buf"    # Ljava/lang/StringBuffer;
    .param p3, "next"    # C
    .param p4, "pointer"    # I

    .line 42
    const-string v0, "%)"

    invoke-super {p0, v0, p2, p3, p4}, Lch/qos/logback/core/pattern/util/RestrictedEscapeUtil;->escape(Ljava/lang/String;Ljava/lang/StringBuffer;CI)V

    .line 43
    return-void
.end method
