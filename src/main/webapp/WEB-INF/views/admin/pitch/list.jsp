<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Danh sách sân bóng</title>
</head>
<body>

<div class="main-content">
    <div class="main-content-inner">
        <div class="breadcrumbs" id="breadcrumbs">
            <script type="text/javascript">
                try {
                    ace.settings.check('breadcrumbs', 'fixed')
                } catch (e) {
                }
            </script>
            <ul class="breadcrumb">
                <li>
                    <i class="ace-icon fa fa-home home-icon"></i>
                    <a href="#">Home</a>
                </li>
                <li class="active">Danh sách sân bóng</li>
            </ul><!-- /.breadcrumb -->
        </div>
        <div class="page-content">
            <div class="row">
                <div class="col-xs-12 ">
                    <div class="widget-box ui-sortable-handle">
                        <div class="widget-header">
                            <h5 class="widget-title">Tìm kiếm</h5>
                            <div class="widget-toolbar">
                                <a href="#" data-action="collapse">
                                    <i class="ace-icon fa fa-chevron-up"></i>
                                </a>

                            </div>
                        </div>

                        <div class="widget-body" style="font-family: 'Times New Roman', Times, serif">
                            <div class="widget-main">
                                <form action="/admin/pitchs-list" method="GET"
                                      class="border p-4 rounded bg-white shadow-sm">
                                    <div class="mb-3">
                                        <label class="form-label">Ngày bắt đầu:</label>
                                        <input type="date" name="startDate" class="form-control" required>
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Ngày kết thúc:</label>
                                        <input type="date" name="endDate" class="form-control" required>
                                    </div>
                                    <div class="mb-4">
                                        <label class="form-label">Loại sân:</label>
                                        <select name="pitchTypeId" class="form-select" required>
                                            <option value="">-- Chọn loại sân --</option>
                                            <option value="Sân 5 người">Sân 5 người</option>
                                            <option value="Sân 7 người">Sân 7 người</option>
                                            <option value="Sân 11 người">Sân 11 người</option>
                                        </select>
                                    </div>
                                    <div class="text-center">
                                        <button type="submit" class="btn btn-primary">Tìm sân trống</button>
                                    </div>
                                </form>

                            </div>
                        </div>
                        <div class="pull-right">
                            <a href="/admin/building-edit">
                                <button class="btn btn-info" title="Thêm tòa nhà">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                         class="bi bi-building-add" viewBox="0 0 16 16">
                                        <path d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7m.5-5v1h1a.5.5 0 0 1 0 1h-1v1a.5.5 0 0 1-1 0v-1h-1a.5.5 0 0 1 0-1h1v-1a.5.5 0 0 1 1 0"/>
                                        <path d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v6.5a.5.5 0 0 1-1 0V1H3v14h3v-2.5a.5.5 0 0 1 .5-.5H8v4H3a1 1 0 0 1-1-1z"/>
                                        <path d="M4.5 2a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5z"/>
                                    </svg>
                                </button>
                            </a>
                            <button class="btn btn-danger" title="Xóa tòa nhà" id="btnDeleteBuilding">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                     class="bi bi-bookmark-plus" viewBox="0 0 16 16">
                                    <path d="M2 2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.777.416L8 13.101l-5.223 2.815A.5.5 0 0 1 2 15.5zm2-1a1 1 0 0 0-1 1v12.566l4.723-2.482a.5.5 0 0 1 .554 0L13 14.566V2a1 1 0 0 0-1-1z"/>
                                    <path d="M8 4a.5.5 0 0 1 .5.5V6H10a.5.5 0 0 1 0 1H8.5v1.5a.5.5 0 0 1-1 0V7H6a.5.5 0 0 1 0-1h1.5V4.5A.5.5 0 0 1 8 4"/>
                                </svg>
                            </button>
                        </div>

                    </div>
                </div>
            </div>
            <!-- bảng danh sách -->

            <div class="row">
                <div class="col-xs-12">
                    <table id="tableList" class="table table-striped table-bordered table-hover"
                           style="margin: 3em 0 1.5em; font-family:'Times New Roman', Times, serif ;">
                        <thead>
                        <tr>
                            <th class="center">
                                <label class="pos-rel">
                                    <input type="checkbox" class="ace">

                                </label>
                            </th>
                            <th>Tên sân</th>
                            <th>Giá thuê(VNĐ)</th>
                            <th>Mô tả sân</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="item" items="${pitchList}">
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace" name="checkList" value="${item.id}">
                                        <span class="lbl"></span>
                                    </label>
                                </td>
                                <td>
                                        ${item.pitchName}
                                </td>
                                <td>
                                        ${item.price}
                                </td>
                                <td>
                                        ${item.description}
                                </td>
                                <td>
                                    <div class="hidden-sm hidden-xs btn-group">

                                        <button class="btn btn-xs btn-success" title="Giao sân bóng cho khách hàng"
                                                onclick="openCustomerModal(${item.id})">
                                            <i class="ace-icon fa fa-check bigger-120"></i>
                                        </button>

                                        <a class="btn btn-xs btn-info" title="Sửa tòa nhà"
                                           href="/admin/building-edit-${item.id}">
                                            <i class="ace-icon fa fa-pencil bigger-120"></i>
                                        </a>

                                        <button class="btn btn-xs btn-danger " title="Xóa tòa nhà"
                                                onclick="deleteBuilding(${item.id})">
                                            <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                        </button>
                                    </div>
                                </td>
                            </tr>

                        </c:forEach>
                        </tbody>
                    </table>
                </div><!-- /.span -->
            </div>
        </div><!-- /.page-content -->
    </div>
</div>


<!-- Modal -->
<div class="modal fade" id="customerModal" tabindex="-1" aria-hidden="true"
     style="font-family: 'Times New Roman', Times, serif;">
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content p-4">
            <div class="modal-header">
                <h5 class="modal-title">Tìm kiếm khách hàng</h5>
            </div>

            <div class="modal-body">
                <div class="mb-3">
                    <label for="customerName" class="form-label">Tên khách hàng</label>
                    <input type="text" id="customerName" class="form-control" placeholder="Nhập tên khách hàng..."/>
                </div>
                <div class="text-center">
                    <button onclick="searchCustomer()" class="btn btn-primary px-4 mx-auto">Tìm khách hàng</button>
                </div>


                <div id="searchResults" class="mt-4">
                    <!-- Kết quả tìm kiếm sẽ hiển thị tại đây -->
                </div>
            </div>

            <div class="modal-footer">
                <button onclick="closeCustomerModal()" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
            </div>

        </div>
    </div>
</div>

<!-- Form chọn khoảng thời gian -->
<!-- Modal Nhập Thời Gian -->
<div class="modal fade" id="timeModal" tabindex="-1" aria-labelledby="timeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content" style="font-family: 'Times New Roman', Times, serif;">
            <div class="modal-header">
                <h5 class="modal-title" id="timeModalLabel">Nhập thời gian đặt sân</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Đóng"></button>
            </div>
            <div class="modal-body text-center">
                <div class="mb-3">
                    <label class="form-label">Ngày bắt đầu:</label>
                    <input type="date" id="startDate" class="form-control" />
                </div>
                <div class="mb-3">
                    <label class="form-label">Ngày kết thúc:</label>
                    <input type="date" id="endDate" class="form-control" />
                </div>
                <button onclick="generateBookingReceipt()" class="btn btn-success w-100">Xác nhận thời gian</button>
            </div>
        </div>
    </div>
</div>


<script>
    let selectedCustomerID = null; //idKH
    let selectedPitchID = null; //idSan
    $('#btnPitch').click(function (e) {
        e.preventDefault();
        $('#listForm').submit();
    });

    function openCustomerModal(pitchID) {
        selectedPitchID = pitchID;
        $('#customerModal').modal();
    }


    function searchCustomer() {
        const name = $('#customerName').val();
        if (name === "") {
            document.getElementById("searchResults").innerHTML = "<p style='color:orange;'>Vui lòng nhập tên khách hàng cần tìm.</p>";
            return;
        }
        $.ajax({
            type: "GET",
            url: "/tim-khach-hang",
            data: {name: name},
            dataType: "json",
            success: function (data) {
                let html = `
         <h3 style="text-align:center; margin-bottom: 20px; color: #2c3e50;">Kết quả tìm kiếm</h3>
        <div style="display:flex; justify-content:center;">
            <table border="1" cellpadding="10" cellspacing="0" style="width:80%; text-align:center; border-collapse: collapse; font-family: Arial, sans-serif;">
                <thead style="background-color: #007bff; color: white;">
                    <tr>
                        <th>Mã KH</th>
                        <th>Họ tên</th>
                        <th>SĐT</th>
                        <th>Email</th>
                        <th>lựa chọn</th>
                    </tr>
                </thead>
                <tbody>
                `;
                if (data.length === 0) {
                    html += `<tr><td colspan="5">Không tìm thấy khách hàng nào.</td></tr>`;
                } else {
                    $.each(data, function (index, c) {
                        console.log("ID:", c.id);
                        console.log("Fullname:", c.fullname);
                        console.log("Phone:", c.phone);
                        html += '<tr>';
                        html += '<td class="text-center">' + c.id + '</td>';
                        html += '<td class="text-center">' + c.fullname + '</td>';
                        html += '<td class="text-center">' + c.phone + '</td>';
                        html += '<td class="text-center">' + c.email + '</td>';
                        html += '<td class="text-center">';
                        html += '<button class="btn btn-primary btn-sm" onclick="selectCustomer(' + c.id + ', \'' + selectedPitchID + '\')">Chọn</button>';
                        html += '</td>';
                        html += '</tr>';

                    });
                }
                html += `</tbody></table></div>`;
                $('#searchResults').html(html);
            },
            error: function () {
                $('#searchResults').html("<p style='color:red; text-align:center;'>Đã xảy ra lỗi khi tìm kiếm.</p>");
            }
        });
    }

    function selectCustomer(idKH, idSan) {
        selectedCustomerID = idKH;
        $('#customerModal').modal('hide');
        $('#timeModal').modal('show');
    }


    function generateBookingReceipt() {
        const startDate = document.getElementById('startDate').value;
        const endDate = document.getElementById('endDate').value;
        if (!startDate || !endDate) {
            alert("Vui lòng nhập đầy đủ ngày bắt đầu và ngày kết thúc!");
            return;
        }
        const data = {
            customerId: selectedCustomerID,
            pitchId: selectedPitchID,
            startDate: startDate,
            endDate: endDate
        };

        $.ajax({
            url: '/create',
            method: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            success: function(response) {
                console.log(response);
                $('#timeModal').modal('hide');
                alert("Tạo phiếu đặt sân thành công!");
            },
            error: function(xhr) {
                alert("Lỗi khi tạo phiếu đặt sân: " + xhr.responseText);
            }
        });
    }



</script>


</body>
</html>
