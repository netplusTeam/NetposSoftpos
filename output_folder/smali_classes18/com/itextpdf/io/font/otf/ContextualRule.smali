.class public abstract Lcom/itextpdf/io/font/otf/ContextualRule;
.super Ljava/lang/Object;
.source "ContextualRule.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7d153b03908a7154L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBacktrackContextLength()I
    .locals 1

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getContextLength()I
.end method

.method public getLookaheadContextLength()I
    .locals 1

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public isGlyphMatchesBacktrack(II)Z
    .locals 1
    .param p1, "glyphId"    # I
    .param p2, "atIdx"    # I

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isGlyphMatchesInput(II)Z
.end method

.method public isGlyphMatchesLookahead(II)Z
    .locals 1
    .param p1, "glyphId"    # I
    .param p2, "atIdx"    # I

    .line 72
    const/4 v0, 0x0

    return v0
.end method
