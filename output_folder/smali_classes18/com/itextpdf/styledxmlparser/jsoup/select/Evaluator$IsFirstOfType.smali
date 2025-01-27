.class public final Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsFirstOfType;
.super Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsNthOfType;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IsFirstOfType"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 429
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsNthOfType;-><init>(II)V

    .line 430
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 433
    const-string v0, ":first-of-type"

    return-object v0
.end method
