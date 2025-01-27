.class public Lcom/sleepycat/je/tree/TreeUtils;
.super Ljava/lang/Object;
.source "TreeUtils.java"


# static fields
.field private static final SPACES:Ljava/lang/String; = "                                                                                                                                "


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static indent(I)Ljava/lang/String;
    .locals 2
    .param p0, "nSpaces"    # I

    .line 31
    const-string v0, "                                                                                                                                "

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
