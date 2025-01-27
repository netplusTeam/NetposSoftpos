.class Lbsh/BSHPrimitiveType;
.super Lbsh/SimpleNode;
.source "BSHPrimitiveType.java"


# instance fields
.field public type:Ljava/lang/Class;


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .line 35
    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/Class;
    .locals 1

    .line 36
    iget-object v0, p0, Lbsh/BSHPrimitiveType;->type:Ljava/lang/Class;

    return-object v0
.end method
