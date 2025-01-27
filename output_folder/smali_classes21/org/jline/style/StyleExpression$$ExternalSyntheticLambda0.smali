.class public final synthetic Lorg/jline/style/StyleExpression$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/jline/style/StyleExpression;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/style/StyleExpression;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/style/StyleExpression$$ExternalSyntheticLambda0;->f$0:Lorg/jline/style/StyleExpression;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/jline/style/StyleExpression$$ExternalSyntheticLambda0;->f$0:Lorg/jline/style/StyleExpression;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/jline/style/StyleExpression;->$r8$lambda$U1LNdjetC3uSJmn24r0nCs0owl4(Lorg/jline/style/StyleExpression;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
