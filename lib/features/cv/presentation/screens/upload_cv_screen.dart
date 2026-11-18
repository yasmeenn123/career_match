import 'package:flutter/material.dart';
import 'package:graduation_project/core/theme/app_color.dart';
import 'package:graduation_project/core/theme/app_size.dart';
import 'package:graduation_project/core/theme/app_text_style.dart';
import 'package:graduation_project/core/widgets/app_button.dart';
import 'package:file_picker/file_picker.dart';
class UploadCvScreen extends StatefulWidget {
  const UploadCvScreen({super.key});

  @override
  State<UploadCvScreen> createState() => _UploadCvScreenState();
}

class _UploadCvScreenState extends State<UploadCvScreen> {
PlatformFile? _file;
String?_error;
Future<void>_pickFile() async{
  final result=await FilePicker.pickFiles(
    type: FileType.custom,
    allowedExtensions:  ['pdf', 'docx'],

  );
  if(result==null)return;
  final file = result.first;

  const maximize=5* 1024 * 1024;
  final size=await file.length();
  if(size!=null && size>maximize){
    setState(() {
      _file = null;
      _error = 'File is too large (max 5MB)';
    });
    return;

  }
  setState(() {
    _file = file;
    _error = null;
  });
}
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Upload CV'),
      ),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(AppSize.spaceLg),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text('Upload Your Resume or CV',style: AppTextStyle.headlineLg.copyWith(
                color: AppColor.navy
              ),),
              const SizedBox(height: AppSize.spaceSm),
              Text( 'Our AI engine parses skills, tools, and work history to find optimal job matches.',
                style: AppTextStyle.bodyLg.copyWith(
                  color: AppColor.textSecondary,
),),
              const SizedBox(height: AppSize.spaceLg),
InkWell(
  onTap: _pickFile,
  borderRadius: BorderRadius.circular(AppSize.radiusLg),
  child: Container(
    padding: EdgeInsets.all(AppSize.spaceXl),

    width: double.infinity,
    decoration: BoxDecoration(
      color:AppColor.blue.withValues(alpha: .06),
      borderRadius: BorderRadius.circular(AppSize.radiusLg),
border: Border.all(color: AppColor.blue),

    ),
    child: Column(
      children: [
        Icon(Icons.cloud_upload_outlined,size: 56,color: AppColor.blue,),
        const SizedBox(height: AppSize.spaceMd),
        Text(
          'Tap to browse your document',
          style: AppTextStyle.labelLg.copyWith(color: AppColor.navy),
        ),
        const SizedBox(height: AppSize.spaceXs),
        Text(
          'PDF or DOCX, max 5MB',
          style: AppTextStyle.bodySm.copyWith(color: AppColor.textSecondary),
        ),


      ],
    ),
  ),
),
              if(_file!=null)
                Column(
                  children: [
                    const SizedBox(height: AppSize.spaceMd),

                    Text(_file!.name,
                      style: AppTextStyle.bodyMd.copyWith(color: AppColor.navy),

                    )
                  ],
                ),
              if(_error !=null)
                Padding(
                  padding: const EdgeInsets.only(top: AppSize.spaceSm),
                  child: Text(
                    _error!,
                    style: AppTextStyle.bodySm.copyWith(color: AppColor.error),
                  ),
                ),

              const Spacer(),

              AppButton(text: 'Process CV with AI',onPressed: _file != null?(){}:null,),






            ],
          ),
        ),
      ),
    );
  }
}
