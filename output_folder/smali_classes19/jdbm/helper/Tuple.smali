.class public final Ljdbm/helper/Tuple;
.super Ljava/lang/Object;
.source "Tuple.java"


# instance fields
.field private _key:Ljava/lang/Object;

.field private _value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Ljdbm/helper/Tuple;->_key:Ljava/lang/Object;

    .line 86
    iput-object p2, p0, Ljdbm/helper/Tuple;->_value:Ljava/lang/Object;

    .line 87
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1

    .line 94
    iget-object v0, p0, Ljdbm/helper/Tuple;->_key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 110
    iget-object v0, p0, Ljdbm/helper/Tuple;->_value:Ljava/lang/Object;

    return-object v0
.end method

.method public setKey(Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;

    .line 102
    iput-object p1, p0, Ljdbm/helper/Tuple;->_key:Ljava/lang/Object;

    .line 103
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .line 118
    iput-object p1, p0, Ljdbm/helper/Tuple;->_value:Ljava/lang/Object;

    .line 119
    return-void
.end method
