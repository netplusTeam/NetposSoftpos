.class public abstract Lcom/itextpdf/styledxmlparser/css/CssAtRule;
.super Lcom/itextpdf/styledxmlparser/css/CssStatement;
.source "CssAtRule.java"


# instance fields
.field ruleName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "ruleName"    # Ljava/lang/String;

    .line 60
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/css/CssStatement;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/CssAtRule;->ruleName:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public getRuleName()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/CssAtRule;->ruleName:Ljava/lang/String;

    return-object v0
.end method
