.class public Lcom/itextpdf/styledxmlparser/css/CssSemicolonAtRule;
.super Lcom/itextpdf/styledxmlparser/css/CssAtRule;
.source "CssSemicolonAtRule.java"


# instance fields
.field private ruleParams:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "ruleDeclaration"    # Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRuleFactory;->extractRuleNameFromDeclaration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/css/CssAtRule;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/CssSemicolonAtRule;->ruleName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/CssSemicolonAtRule;->ruleParams:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/CssSemicolonAtRule;->ruleName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/CssSemicolonAtRule;->ruleParams:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "@{0} {1};"

    invoke-static {v1, v0}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
