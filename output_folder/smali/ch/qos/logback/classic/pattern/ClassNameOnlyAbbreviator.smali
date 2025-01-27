.class public Lch/qos/logback/classic/pattern/ClassNameOnlyAbbreviator;
.super Ljava/lang/Object;
.source "ClassNameOnlyAbbreviator.java"

# interfaces
.implements Lch/qos/logback/classic/pattern/Abbreviator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abbreviate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "fqClassName"    # Ljava/lang/String;

    .line 30
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 31
    .local v0, "lastIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 32
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 34
    :cond_0
    return-object p1
.end method
