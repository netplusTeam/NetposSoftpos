.class Ljavassist/compiler/MemberCodeGen$JsrHook2;
.super Ljavassist/compiler/CodeGen$ReturnHook;
.source "MemberCodeGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/compiler/MemberCodeGen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JsrHook2"
.end annotation


# instance fields
.field target:I

.field var:I


# direct methods
.method constructor <init>(Ljavassist/compiler/CodeGen;[I)V
    .locals 1
    .param p1, "gen"    # Ljavassist/compiler/CodeGen;
    .param p2, "retTarget"    # [I

    .line 183
    invoke-direct {p0, p1}, Ljavassist/compiler/CodeGen$ReturnHook;-><init>(Ljavassist/compiler/CodeGen;)V

    .line 184
    const/4 v0, 0x0

    aget v0, p2, v0

    iput v0, p0, Ljavassist/compiler/MemberCodeGen$JsrHook2;->target:I

    .line 185
    const/4 v0, 0x1

    aget v0, p2, v0

    iput v0, p0, Ljavassist/compiler/MemberCodeGen$JsrHook2;->var:I

    .line 186
    return-void
.end method


# virtual methods
.method protected doit(Ljavassist/bytecode/Bytecode;I)Z
    .locals 2
    .param p1, "b"    # Ljavassist/bytecode/Bytecode;
    .param p2, "opcode"    # I

    .line 190
    packed-switch p2, :pswitch_data_0

    .line 209
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "fatal"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :pswitch_0
    goto :goto_0

    .line 194
    :pswitch_1
    iget v0, p0, Ljavassist/compiler/MemberCodeGen$JsrHook2;->var:I

    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->addAstore(I)V

    .line 195
    goto :goto_0

    .line 203
    :pswitch_2
    iget v0, p0, Ljavassist/compiler/MemberCodeGen$JsrHook2;->var:I

    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->addDstore(I)V

    .line 204
    goto :goto_0

    .line 206
    :pswitch_3
    iget v0, p0, Ljavassist/compiler/MemberCodeGen$JsrHook2;->var:I

    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->addFstore(I)V

    .line 207
    goto :goto_0

    .line 200
    :pswitch_4
    iget v0, p0, Ljavassist/compiler/MemberCodeGen$JsrHook2;->var:I

    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->addLstore(I)V

    .line 201
    goto :goto_0

    .line 197
    :pswitch_5
    iget v0, p0, Ljavassist/compiler/MemberCodeGen$JsrHook2;->var:I

    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->addIstore(I)V

    .line 198
    nop

    .line 212
    :goto_0
    const/16 v0, 0xa7

    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 213
    iget v0, p0, Ljavassist/compiler/MemberCodeGen$JsrHook2;->target:I

    invoke-virtual {p1}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 214
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xac
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
